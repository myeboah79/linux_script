#!/bin/bash

# Function to display the menu
show_menu() {
        echo "File Operations Menu:"
        echo "1. Copy files"
        echo "2. Move files"
        echo "3. Delete files"
        echo "4. Quit"
}

# Function to copy files
copy_files() {
        echo "Enter source directory:"
        read source_dir

        echo "Enter destination directory:"
        read dest_dir

        # Perform the copy operation
        cp -r "$source_dir" "$dest_dir"

        echo "Files copied successfully."
}

# Function to move files
move_files() {
        echo "Enter source directory:"
        read source_dir

        echo "Enter destination directory:"
        dest_dir

        # Perform the move operation
        mv "$source_dir" "$dest_dir"

        echo "Files moved successfully."
}

# Function to delete files
delete_files() {
        echo "Enter the directory to delete:"
        read delete_dir

        # Perform the delete operation
        rm -r "$delete_dir"

        echo "Directory deleted successfully."
}

# Main function
main() {
        while true; do
                show_menu

                echo "Enter your hcoice:"
                read choice

                case $choice in
                        1)
                               copy_files
                                ;;
                        2)
                                move_files
                                ;;
                        3)
                                delete_files
                                ;;
                        4)
                                echo "Existing the script. Goodbye!"
                                exit 0
                                ;;
                        *)
                                echo "Invalid choice. Please enter a valid option."
                                ;;
                esac
        done
}

main
