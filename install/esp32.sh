#!/bin/bash
shellPath=`pwd`
WorkPath=$shellPath/../..
function get_xtensa_esp32()
{
    	if [ ! -f $shellPath/xtensa-esp32-elf.tar.gz ]; then
		cd $shellPath
		wget -O xtensa-esp32-elf.tar.gz https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
    	fi
	if [ ! -d  $WorkPath/xtensa-esp32-elf/bin ]; then
        	cd $WorkPath
		mkdir xtensa-esp32-elf
		tar -xzvf $shellPath/xtensa-esp32-elf.tar.gz  -C xtensa-esp32-elf --strip-components 1 
		echo -e "finish esp32 xtensa-esp32-elf \n${Line}"   	
	else
		echo -e "error esp32 xtensa-esp32-elf \n${Line}"
	fi
}

get_xtensa_esp32