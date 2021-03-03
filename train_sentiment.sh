cd /home/kangweipeng/hupidong/Learning/BERT-train2deploy/
export BERT_BASE_DIR=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/bert_tiny
export DATA_DIR=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/data
export TRAINED_CLASSIFIER=/home/kangweipeng/hupidong/Learning/BERT-train2deploy/output
export EXP_NAME=setiment

python run_mobile.py \
  --task_name=setiment \
  --do_train=true \
  --do_eval=true \
  --data_dir=$DATA_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --output_dir=$TRAINED_CLASSIFIER/$EXP_NAME
