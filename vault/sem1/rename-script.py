import os

def rename_directories(root_folder):
    for root, dirs, _ in os.walk(root_folder):
        for dir_name in dirs:
            # Check if the directory is inside a UE directory and is a single digit
            if "UE" in root and dir_name.startswith("U") and len(dir_name) == 2 and dir_name[1].isdigit():
                new_name = "U0" + dir_name[1]
                old_path = os.path.join(root, dir_name)
                new_path = os.path.join(root, new_name)
                
                # Rename the directory
                os.rename(old_path, new_path)
                print(f"Renamed {old_path} to {new_path}")

if __name__ == "__main__":
    directory_path = "./"  # Specify your root directory path here
    rename_directories(directory_path)
