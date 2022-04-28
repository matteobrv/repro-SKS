# [Re] Hate Speech Detection based on Sentiment Knowledge Sharing

[![DOI](https://zenodo.org/badge/438386237.svg)](https://zenodo.org/badge/latestdoi/438386237)

This repository hosts the code, data and results of our reproducibility experiment for the paper "_Hate Speech Detection based on Sentiment Knowledge Sharing_" by Zhou et al. (2021), as part of the [ML Reproducibility Challenge 2021](https://paperswithcode.com/rc2021).

## Table of Contents

- [[Re] Hate Speech Detection based on Sentiment Knowledge Sharing](#re-hate-speech-detection-based-on-sentiment-knowledge-sharing)
  - [Table of Contents](#table-of-contents)
  - [Dependencies](#dependencies)
  - [Data](#data)
  - [Training](#training)
  - [Results](#results)
  - [License](#license)

## Dependencies

This project requires Python >= 3.8.10. After cloning the repository and creating a dedicated environment, all dependencies can be installed running `pip install -r requirements.txt`. Before proceeding to the training step, [Glove Common Crawl Embeddings (840B Token)](https://nlp.stanford.edu/data/glove.840B.300d.zip) should be downloaded, unzipped and placed in the data directory.

## Data

- ### SemEval data-set

    We provide the trainig- and test-set for the [SemEval2019 data-set](http://hatespeech.di.unito.it/hateval.html) as two separate csv files `df_train.csv` and `df_test.csv`. To accomodate the original implementation, the original fields `id`, `text` and `HS` have already been renamed as `task_idx`, `tweet` and `label`.

- ### Davidson data-set

    We include both the original [Davidson data-set](https://github.com/t-davidson/hate-speech-and-offensive-language/tree/master/data) `davidson_data_full.csv` and our 5-fold cross-validation splits, where the `class` field has already been renamed as `label` to accomodate the original implementation.

- ### Sentiment data-set

    We provide the training data-set used for the sentiment analysis task `train_E6oV3lV.csv`. The original training- and test-set are freely available on [Kaggle](https://www.kaggle.com/dv1453/twitter-sentiment-analysis-analytics-vidya).

- ### Dictionary of derogatory words

    We rely on the same dictionary of derogatory words `word_all.txt` compiled by the original authors.

## Training

To reproduce our results for the three models `SKS`, `-s` and `-sc` on both the SemEval (SE) and the Davidson (DV) data-sets, the appropriate shell script should be executed from the DNN directory.

- `SE_run_SKS.sh`: trains the `SKS` model on the SE data-set using both sentiment features and category embeddings;
- `SE_run_s.sh`: trains the `SKS` model on the SE data-set ablating sentiment features;
- `SE_run_sc.sh`: trains the `SKS` model on the SE data-set ablating sentiment features and category embeddings;
- `DV_run_SKS.sh`: trains the `SKS` model on the 5-folds DV data-set using both sentiment features and category embeddings;
- `DV_run_s.sh`: trains the `SKS` model on the 5-folds DV data-set ablating sentiment features;
- `DV_run_sc.sh`: trains the `SKS` model on the 5-folds DV data-set ablating sentiment features and category embeddings.

## Results

In the results folder we include the intermediate findings obtained on each model for both data-sets, the output of the grid search we ran to tune a subset of the hyperparameters (learning rate, batch size, dropout rate) and a summary of our results `resutls.txt`.

## License

The code and the data in this repository are provided under an MIT license. For information about the license under which the original code-base distributed, please consult the [original repository](https://github.com/1783696285/SKS).
