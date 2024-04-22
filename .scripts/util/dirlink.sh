#!/usr/bin/env bash
#
# small script to link files in a directory in markdown

if [ "$#" -ne 2 ]; then
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
echo -e "\nDo you want to save the result to the output file ($output_file)? [Y/n]"

read -r save
if [[ "$save" == [yY] ]] || [[ -z "$save" ]]; then
    touch $output_file
    cat tmp > $output_file
fi

rm tmp
