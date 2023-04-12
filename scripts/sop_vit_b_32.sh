CUDA_VISIBLE_DEVICES=0 torchrun --nproc_per_node 1 \
retrieval.py \
            --batch_size           64 \
            --dataset              sop \
            --debug                0 \
            --epochs               64 \
            --lr                   1e-05 \
            --lr_pfc_weight        10.0 \
            --input_size           224 \
            --gradient_acc         1 \
            --model_name           ViT-B/32 \
            --margin_loss_m1       1.0 \
            --margin_loss_m2       0.25 \
            --margin_loss_m3       0.0 \
            --margin_loss_s        32.0 \
            --margin_loss_filter   0.0 \
            --num_workers          4 \
            --num_feat             512 \
            --optimizer            adamw \
            --output_dim           512 \
            --output               /tmp/tmp_for_training \
            --resume               NULL \
            --sample_rate          1.0 \
            --seed                 1024 \
            --transform            origin_clip \
            --weight_decay         0 2>&1 | tee sop_b32.log
