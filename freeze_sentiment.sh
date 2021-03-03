SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
export PROJECT_DIR=$SHELL_FOLDER
export BERT_BASE_DIR=$PROJECT_DIR/bert_tiny
export DATA_DIR=$PROJECT_DIR/data
export TRAINED_CLASSIFIER=$PROJECT_DIR/output
export EXP_NAME=sentiment

cd $PROJECT_DIR
python freeze_graph.py \
    -bert_model_dir $BERT_BASE_DIR \
    -model_dir $TRAINED_CLASSIFIER/$EXP_NAME \
    -max_seq_len 128 \
    -num_labels 3
