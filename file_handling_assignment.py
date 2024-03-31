# file_handling_assignment.py

def create_file():
    try:
        # Create a new text file named "my_file.txt" in write mode ('w')
        with open("my_file.txt", "w") as file:
            file.write("Hello, this is line 1.\n")
            file.write("12345 is a number in line 2.\n")
            file.write("Python is fun in line 3.\n")
        print("File 'my_file.txt' created successfully!")
    except FileNotFoundError:
        print("Error: File not found.")
    except PermissionError:
        print("Error: Permission denied.")

def read_and_display():
    try:
        # Read the contents of "my_file.txt" and display them
        with open("my_file.txt", "r") as file:
            content = file.read()
            print("\nFile content:\n", content)
    except FileNotFoundError:
        print("Error: File not found.")
    except PermissionError:
        print("Error: Permission denied.")

def append_to_file():
    try:
        # Append three additional lines to "my_file.txt"
        with open("my_file.txt", "a") as file:
            file.write("Appending line 4.\n")
            file.write("More text in line 5.\n")
            file.write("Last line, line 6.\n")
        print("\nFile 'my_file.txt' updated successfully!")
    except FileNotFoundError:
        print("Error: File not found.")
    except PermissionError:
        print("Error: Permission denied.")

if __name__ == "__main__":
    create_file()
    read_and_display()
    append_to_file()
