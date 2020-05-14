#! /usr/local/bin/python3
import os
import pathlib


def main():
    spoons_dir = pathlib.Path(__file__).parent.absolute().parent
    err_msg = "The containing directory is not Spoons. Please place WindowSnap in the Spoons dir"
    folder_name = os.path.basename(spoons_dir)
    assert folder_name == "Spoons", f"{err_msg} - Folder:{folder_name}"

    line = "hs.loadSpoon('WindowSnap')"
    config_path = os.path.join(spoons_dir, '../init.lua')
    exists = os.path.exists(config_path)
    with open(config_path, 'r+' if exists else 'w+') as f:
        all_text = f.read()
        if line not in all_text:
            if not all_text.endswith('\n') and len(all_text) > 0:
                f.write('\n')
            f.write(line)
            f.write("\n")
            print("Succesfully added WindowSnap!")
        else:
            print("WindowSnap is already installed. No changes were made.")
    return 0


if __name__ == "__main__":
    main()
