WORK_DIR=$HOME/zoloev-city/gigachat
CONFIG_DIR=$WORK_DIR/source/llm-foundry/scripts/train/yamls/pretrain

source $WORK_DIR/source/llm-foundry/llmfoundry-venv/bin/activate

export WANDB_API_KEY=api_key
export WANDB_PROJECT="gigachat"
export WANDB_DIR=$WORK_DIR/checkpoints

accelerate launch $WORK_DIR/source/llm4trx/inference.py \
    --config-dir $CONFIG_DIR \
    --config-name $CONFIG \
    variables.work_dir=$WORK_DIR
