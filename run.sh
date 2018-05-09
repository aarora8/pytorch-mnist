#!/bin/bash

set -e # exit on error
echo "$0 $@"
. ./parse_options.sh

stage=0

/home/aaror/yes/bin/python ./mnist_cuda.py \
    --epochs 2 --no-cuda

#CUDA_VISIBLE_DEVICES=$(free-gpu) /home/aaror/yes/bin/python ./mnist_cuda.py \
#        --epochs 4

#--gpu 1 --mem 2G limit_num_gpus.sh /home/aaror/yes/bin/python ./mnist_cuda.py \
#          --name $name \
#          --depth $depth \
#          --batch-size $batch \
#          --img-height $height \
#          --img-width $width \
#          --epochs $epochs
