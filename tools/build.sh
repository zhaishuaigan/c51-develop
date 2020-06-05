if [ ! -d /data/build ]; then
    mkdir /data/build
fi

if [ ! -d /data/hex ]; then
    mkdir /data/hex
fi
sdcc /data/src/main.c -o /data/build/main.ihx && packihx /data/build/main.ihx > /data/hex/main.hex