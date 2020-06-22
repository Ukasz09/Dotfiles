#!/bin/bash

code_lines_counter_install(){
	git clone https://github.com/Ukasz09/Code-lines-counter.git
	cd Code-lines-counter/
	make install
	cd ..
	rm -r Code-lines-counter/
}

code_lines_counter_install
