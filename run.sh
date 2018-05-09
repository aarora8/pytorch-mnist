#!/bin/bash

set -e # exit on error
echo "$0 $@"


. ./cmd.sh
. ./parse_options.sh

stage=1

if [ $stage -le 0 ]; then
  /home/aaror/yes/bin/python ./mnist_cuda.py \
      --epochs 2 --no-cuda
  exit 0;
fi 

if [ $stage -le 1 ]; then
  CUDA_VISIBLE_DEVICES=$(free-gpu) /home/aaror/yes/bin/python ./mnist_cuda.py \
      --epochs 4
  exit 0;
fi

if [ $stage -le 1 ]; then
--gpu 1 --mem 2G limit_num_gpus.sh /home/aaror/yes/bin/python ./mnist_cuda.py \
          --name $name \
          --depth $depth \
          --batch-size $batch \
          --img-height $height \
          --img-width $width \
          --epochs $epochs
fi
