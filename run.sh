#!/bin/bash
# cmd=queue.pl

#/home/aaror/yes/bin/python ./mnist_cuda.py \
#    --epochs 1 --no-cuda

CUDA_VISIBLE_DEVICES=$(free-gpu) /home/aaror/yes/bin/python ./mnist_cuda.py \
        --epochs 1

#/home/aaror/yes/bin/python ./main.py \
#    --epochs 1  --no-cuda --num-processes 1
