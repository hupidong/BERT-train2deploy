cd /home/kangweipeng/hupidong/Learning/BERT-train2deploy/
export BERT_BASE_DIR=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/bert_tiny
export DATA_DIR=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/data
export TRAINED_CLASSIFIER=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/output
export EXP_NAME=setiment

python run_mobile.py \
  --task_name=setiment \
  --do_predict=true \
  --data_dir=$DATA_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER/$EXP_NAME \
  --max_seq_length=128 \
  --output_dir=$TRAINED_CLASSIFIER/$EXP_NAME
