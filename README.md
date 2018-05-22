GTX 1080ti  11172 MiB  
Intel(R) Xeon(R) CPU E5-2680 v2 @ 2.80GHz

qlogin -l 'hostname=c*,gpu=1' -now no  

/export/b08/aaror/git_pytorch/pytorch-mnist  

k GPUs on a machine, use either qsub or qlogin and add flag -l 'gpu=k'  
devices=`free-gpu`  
python some_gpu_jobs.py -gpuid $devices  
CUDA_VISIBLE_DEVICES=`free-gpu` python some_gpu_jobs.py  

eog bound_0.png

GPU:  
 - epoch = 1  (C08)
Time Taken 9.177405834197998  
Time Taken 7.968928098678589  
Time Taken 7.470052719116211  
Time Taken 7.209326505661011  

- epoch = 2  (c08)
Time Taken 16.85746455192566  
Time Taken 15.698396921157837  
Time Taken 15.549557447433472  

- epoch = 4  (c08)
Time Taken 29.222759008407593  
Time Taken 30.508347749710083  
Time Taken 30.945880651474  
Time Taken 30.23419690132141  

Tesla K80: 
num_gpu: 1 num_epoch: 1  
Time Taken 6.35714316368103  
num_gpu: 1 num_epoch: 2  
Time Taken for training 13.206877946853638  

num_gpu: 2 num_epoch: 1 
Time Taken for training 10.670583963394165  
num_gpu: 2 num_epoch: 2 
Time Taken for training 17.086159706115723  

num_epoch: 5  
num_gpu: 1 Time Taken for training 36.39402890205383  
num_gpu: 2 Time Taken for training 69.010981798172  
num_gpu: 2 Time Taken for training 34.263713121414185
# num_gpu: 3 Time Taken for training 69.010981798172  

deeper_model:
num_gpu:2 Time Taken for training 102.7382481098175
90.33354663848877  89.0032160282135  85.15420651435852  

num_gpu:1 Time Taken for training 78.56940531730652  
73 sec, 74sec

num_CPU:1 Time Taken for training 339.66202306747437  
num_CPU:2 Time Taken for training 200.28642392158508  
num_cpu:3 Time Taken for training 138.3019483089447

CPU:  (b08)
- epoch = 1  
Time Taken 31.005918979644775  
Time Taken 30.526674270629883  

- epoch = 2 (b08)  
Time Taken 56.815739154815674  
Time Taken 56.27461886405945  
Time Taken 54.67753767967224  
Time Taken 56.7895827293396  
Time Taken 65.07774114608765  
Time Taken 64.50405240058899  

- epoch = 4  (b08)
Time Taken 109.65595316886902  
Time Taken 108.75079822540283  
Time Taken 123.96786570549011  
Time Taken 134.29621148109436  
Time Taken 129.84538102149963  

best speedup:  
epoch = 1  4.3  
epoch = 2  4.0  
epoch = 4  4.3  

CPU:  
Test set: Average loss: 0.2062, Accuracy: 9411/10000 (94%)  
Test set: Average loss: 0.1264, Accuracy: 9615/10000 (96%)  
Test set: Average loss: 0.0979, Accuracy: 9701/10000 (97%)  
Test set: Average loss: 0.0829, Accuracy: 9742/10000 (97%)  

GPU:  
Test set: Average loss: 0.2021, Accuracy: 9407/10000 (94%)  
Test set: Average loss: 0.1265, Accuracy: 9592/10000 (96%)  
Test set: Average loss: 0.1014, Accuracy: 9689/10000 (97%)  
Test set: Average loss: 0.0820, Accuracy: 9740/10000 (97%)  

multi CPU:  
num_cpu: 1 Time Taken 29.02730965614319  
num_cpu: 2 Time Taken 19.031011819839478  
num_cpu: 3 Time Taken 15.54700493812561  
num_cpu: 4 Time Taken 13.457727909088135  

Fashion mnist:
3 epoch shallow: 23.63  
1 epoch deep: 17.58  
