#!/bin/bash
#chkconfig: 2345 80 90
#description: 启动BERT分类模型 

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
cd $SHELL_FOLDER

echo 'start BERT mobile svr...'
rm -rf tmp*

export BERT_BASE_DIR=$SHELL_FOLDER/../bert_tiny
export TRAINED_CLASSIFIER=$SHELL_FOLDER/../output
export EXP_NAME=sentiment

bert-base-serving-start \
    -model_dir $TRAINED_CLASSIFIER/$EXP_NAME \
    -bert_model_dir $BERT_BASE_DIR \
    -model_pb_dir $TRAINED_CLASSIFIER/$EXP_NAME \
    -mode CLASS \
    -max_seq_len 128 \
    -http_port 8091 \
    -port 5575 \
    -port_out 5576 
