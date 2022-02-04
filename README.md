# [Re] Hate Speech Detection based on Sentiment Knowledge Sharing
This repository hosts the code, data and results of our reproducibility experiment for the paper "Hate Speech Detection based on Sentiment Knowledge Sharing" by Zhou et al. (2021), as part of the [ML Reproducibility Challenge 2021](https://paperswithcode.com/rc2021).

## Table of Contents
- [Dependencies](#dependencies)
- [Data](#data)
- [Training](#training)
- [Results](#results)

## Dependencies
This project requires Python >= 3.8.10. After cloning the repository and creating a dedicated environment, all dependencies can be installed executing `pip install -r requirements.txt`

## Data
-   ### SemEval data-set
    We provide the trainig- and test-set for the [SemEval2019 data-set](http://hatespeech.di.unito.it/hateval.html) as two separate csv files `df_train.csv` and `df_test.csv`. To accomodate the original implementation, the original fields `id`, `text` and `HS` have already been renamed `task_idx`, `tweet` and `label`.

-   ### Davidson data-set
    We include both the original [Davidson data-set](https://github.com/t-davidson/hate-speech-and-offensive-language/tree/master/data) `davidson_data_full.csv` and our 5-fold cross-validation splits, where the `class` field has already been renamed `label` accomodate the original implementation.

-   ### Sentiment data-set
    We provide the training data-set used for the sentiment analysis task `train_E6oV3lV.csv`, both training- and test-set can be accessed on [Kaggle](https://www.kaggle.com/dv1453/twitter-sentiment-analysis-analytics-vidya).

-   ### Dictionary of derogatory words
    We rely on the same dictionary of derogatory words `word_all.txt` compiled by the original authors.

-   ### Glove embeddings
    Before the training step, [Glove Common Crawl Embeddings (840B Token)](https://nlp.stanford.edu/data/glove.840B.300d.zip) should be downloaded, unzipped and placed in the data directory.

## Training
To reproduce our results for the three models `SKS`, `-s` and `-sc` on both the SemEval (SE) and the Davidson (DV) data-sets, the appropriate shell script should be executed from the DNN directory.

- `SE_run_SKS.sh`: trains the `SKS` model on the SE data-set using both sentiment features and _category embeddings_;
- `SE_run_s.sh`: trains the `SKS` model on the SE data-set ablating sentiment features;
- `SE_run_sc.sh`: trains the `SKS` model on the SE data-set ablating sentiment features and _category embeddings_;
- `DV_run_SKS.sh`: trains the `SKS` model on the 5-folds DV data-set using both sentiment features and _category embeddings_;
- `DV_run_s.sh`: trains the `SKS` model on the 5-folds DV data-set ablating sentiment features;
- `DV_run_sc.sh`: trains the `SKS` model on the 5-folds DV data-set ablating sentiment features and _category embeddings_.

## Results
In the results folder we include the intermediate findings obtained on each model for both data-sets, the output of the grid search we ran to tune a subset of the hyperparameters (learning rate, batch size, dropout rate) and a summary of our results `resutls.txt`.
