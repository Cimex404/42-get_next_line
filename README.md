#	get_next_line 42

This is a 42 project that teaches about static variable and provides a useful function for the upcoming projects.

By using the "make" command, you can compile the program. The Makefile will also create a TestFile.txt file with the content of the lines to test the program.
The program takes two arguments "filename" "number of lines"
Run the program as follows:

```bash
./get_next_line TestFile.txt 10
```

## How it works

The program will use the "read" function to read the file.
I will then put the content of the bytes that were read into a buffer.
The buffer will then be passed to the "append" function.
The "append" function will then append the content of the buffer to the line.
When the append function reaches a newline character, it will return the line.
The main function will then print the line.

## What are static variables?

Static variables are variables that are declared at the beginning of a function, but when the function is called again, the variable has retained its value from the previous call.