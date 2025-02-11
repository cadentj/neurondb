deepspeed --module openrlhf.cli.train_sft \
   --max_len 2048 \
   --dataset kh4dien/explainer-gemma-2_simulator-qwen2.5 \
   --input_key explanation \
   --output_key example \
   --input_template $'## Description: {}\n## Input:' \
   --train_batch_size 64 \
   --micro_train_batch_size 8 \
   --max_samples 500000 \
   --pretrain Qwen/Qwen2.5-3B \
   --save_path ./checkpoint/qwen2.5-3b-sim \
   --save_steps -1 \
   --logging_steps 1 \
   --eval_steps -1 \
   --zero_stage 0 \
   --max_epochs 1 \
   --bf16 \
   --flash_attn \
   --learning_rate 5e-6 \
   --gradient_checkpointing \
   --use_wandb f4f8426bb398048c9b50d2235c42346015f6e743 \
   --lora_rank 32 \
   --target_modules q_proj,k_proj,v_proj,o_proj,gate_proj,down_proj,up_proj