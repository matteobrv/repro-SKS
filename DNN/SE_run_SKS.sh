python3 train.py -d ../data/semeval_data/df_train.csv --trial ../data/semeval_data/df_test.csv -s ../data/sentiment_data/train_E6oV3lV.csv --iterations 10 --word_list ../data/word_list/word_all.txt --emb ../data/glove.840B.300d.txt -o output_dir -b 512 --epochs 15 --lr 0.001 --maxlen 50 -t HHMM_transformer

