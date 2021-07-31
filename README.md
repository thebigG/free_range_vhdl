# Experimenting with VHDL

To run vhdl code:
```
First, you have to compile the file; this is called analysis of a design file in VHDL terms. Run ghdl -a hello.vhdl in the shell. This command creates or updates a file work-obj93.cf, which describes the library work.
Then, run ghdl -e hello_world in the shell. Command -e means elaborate, which is used to build a design, with the hello_world entity at the top of the hierarchy.
```

