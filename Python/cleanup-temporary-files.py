# cleanup_temp_files.py
import os
import glob

TEMP_DIRS = ["/tmp", "/var/tmp"]
FILE_EXTENSIONS = ["*.tmp", "*.log"]

def remove_files(directory, extensions):
    for ext in extensions:
        files = glob.glob(os.path.join(directory, ext))
        for file in files:
            os.remove(file)
            print(f"Removed {file}")

for temp_dir in TEMP_DIRS:
    remove_files(temp_dir, FILE_EXTENSIONS)

print("Temporary files cleaned up.")
