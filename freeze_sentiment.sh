cd /home/kangweipeng/hupidong/Learning/BERT-train2deploy/
export BERT_BASE_DIR=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/bert_tiny
export DATA_DIR=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/data
export TRAINED_CLASSIFIER=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/output
export EXP_NAME=setiment

python freeze_graph.py \
    -bert_model_dir $BERT_BASE_DIR \
    -model_dir $TRAINED_CLASSIFIER/$EXP_NAME \
    -max_seq_len 128 \
    -num_labels 3
