PYTHONPATH=$PYTHONPATH:../../ \
spring.submit arun -n$1 --gpu \
"python -u -m main \
    --model deit_tiny_patch16_224 \
    --batch-size 64 \
    --data-path /mnt/lustre/share/images \
    --output_dir ./ --dist-eval \
    --resume checkpoint.pth \
    2>&1 | tee log.txt"
