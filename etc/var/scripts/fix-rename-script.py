import os

def undo_rename_directories(root_folder):
    for root, dirs, _ in os.walk(root_folder):
        for dir_name in dirs:
            # Check if the directory was renamed to have a "U0" prefix and is named U0E
            if dir_name.startswith("U0") and "U0E" in dir_name:
                original_name = dir_name.replace("U0E", "UE")
                old_path = os.path.join(root, dir_name)
                new_path = os.path.join(root, original_name)
                
                # Rename the directory back to its original name
                os.rename(old_path, new_path)
                print(f"Renamed {old_path} to {new_path}")

if __name__ == "__main__":
    directory_path = "./"  # Specify your root directory path here
    undo_rename_directories(directory_path)
