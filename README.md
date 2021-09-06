[![](https://img.shields.io/badge/docs-readme-blue.svg)](https://thebigg.github.io/free_range_vhdl/)
# Learning VHDL

This repo is a collection of examples  as I learn VHDL from [Free Range VHDL](http://freerangefactory.org/pdf/df344hdh4h8kjfh3500ft2/free_range_vhdl.pdf) 

The `free_range_vhdl/free_range_vhdl.xpr` file is a [vivado](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html) project. 

# To run vhdl code from the shell:
```
export $SRC_DIR=ch5
make
cd ch5/build

ghdl -r {ENTITY_NAME}
```

Note that `ch5` can be any directory that has vhdl source code in it.

