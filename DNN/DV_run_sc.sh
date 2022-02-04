#!/usr/bin/env bash

for num in {1..5}; do

	python3 train.py -d ../data/labeled_data_folds/train_$num.csv --trial ../data/labeled_data_folds/test_$num.csv --iterations 10 --word_list ../data/word_list/word_all.txt --emb ../data/glove.840B.300d.txt -o output_dir -b 512 --epochs 15 --lr 0.001 --maxlen 50 -t HHMM_transformer --task 1 --ablate_cat_emb
done
