mkdir wince && cd wince
cmake ../ -DCMAKE_TOOLCHAIN_FILE=Toolchain/arm-mingw32ce.cmake -DXSLTS=windows -DCACHE_SIZE=10485760 -Dsvg2png_scaling:STRING=16,32 -Dsvg2png_scaling_nav:STRING=32 -Dsvg2png_scaling_flag=16 -DSAMPLE_MAP=n || cp -r CMakeFiles $CIRCLE_ARTIFACTS && exit -1
make || exit -1
