.ONESHELL:
.SHELLFLAGS += -e

analyze:
		@cd $(SRC_DIR)
		@mkdir build
		@cd build
		@ghdl -a ../*.vhdl

clean:
		@rm -r $(SRC_DIR)/build
