#!/usr/bin/env bash
#
# small script to link files in a directory in markdown

target_directory=$PWD

if [ "$#" -ne 1 ]; then
    echo "Please enter the target directory:"
    read target_directory
else
    target_directory=$1
fi

cd $target_directory
touch tmp

echo "---" > tmp

for file in *
do
    if [ "$file" == "tmp" ]; then
        continue
    fi

    base_name=$(basename "$file" | cut -d. -f1)
    echo "$base_name: \"[[$file]]\"" >> "tmp"
done

echo "---" >> tmp

output_file="!$(basename $PWD).md"
echo -e "\nResult:" && cat tmp
echo -e "\nDo you want to \e[4mS\e[0mave the result to the output file ($output_file),
\e[4mm\e[0modify the filename or \e[4mq\e[0muit? [S/m/q]"

read -r action
case $action in
    [sS]|'')
        touch $output_file
        cat tmp > $output_file
        ;;
    [mM])
        echo "Enter new output file name:" && read new_name
        output_file="!$new_name.md"
        touch $output_file
        cat tmp > $output_file
        ;;
    *)
        echo "Exiting..."
        rm tmp
        exit 0
        ;;
esac

rm tmp