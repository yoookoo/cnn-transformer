PYTHONPATH=$PYTHONPATH:../../ \
spring.submit run --gpu -n$1 -u -x SH-IDC1-10-5-37-33 \
"python -u -m main \
    --model deit_base_patch16_224 \
    --batch-size 64 \
    --data-path /mnt/lustre/share/images \
    --output_dir ./ --dist-eval \
    2>&1 | tee log.txt"
