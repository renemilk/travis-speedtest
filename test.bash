#!/bin/bash

fio --randrepeat=1 --ioengine=libaio --direct=1 --gtod_reduce=1 \
    --name=test --filename=test --bs=4k --iodepth=64 \
    --size=500M --readwrite=randrw --rwmixread=75 \
    --eta=always  --eta-newline=30 \
    --status-interval=540
