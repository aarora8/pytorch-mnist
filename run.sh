#!/bin/bash

/home/aaror/yes/bin/python ./mnist_cuda.py \
    --epochs 2 --no-cuda

#CUDA_VISIBLE_DEVICES=$(free-gpu) /home/aaror/yes/bin/python ./mnist_cuda.py \
#        --epochs 4

