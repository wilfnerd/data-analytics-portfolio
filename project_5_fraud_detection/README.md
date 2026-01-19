# Credit Card Fraud Detection (Imbalanced Classification)

## Project Overview

This project builds and evaluates machine learning models to detect fraudulent credit card transactions using a highly imbalanced real-world dataset. The objective is to maximize fraud detection recall while maintaining interpretability and business relevance.

The dataset contains anonymized transaction features derived from PCA transformations, reflecting realistic constraints in financial data science projects.

---

## Dataset

**Source:** Kaggle — Credit Card Fraud Detection
**Size:** 284,807 transactions
**Fraud Rate:** ~0.17%

**Target Variable**

* `Class = 1` → Fraud
* `Class = 0` → Legitimate transaction

All features except `Time` and `Amount` are anonymized PCA components.

---

## Project Structure

```
project_5_fraud_detection/
├── data/
│   ├── creditcard.csv
│   ├── processed_data.pkl
│   └── threshold_results.pkl
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   ├── 02_data_preprocessing.ipynb
│   ├── 03_modeling.ipynb
│   ├── 04_evaluation_thresholds.ipynb
│   └── 05_explainability_and_business.ipynb
├── models/
│   ├── logistic_fraud_model.pkl
│   ├── random_forest_fraud_model.pkl
│   └── scaler.pkl
├── outputs/
│   └── logistic_feature_importance.csv
├── requirements.txt
└── README.md
```

---

## Methodology

### 1. Data Exploration

* Verified no missing values
* Confirmed extreme class imbalance
* Inspected feature distributions

### 2. Preprocessing

* Feature scaling using `StandardScaler`
* Stratified train-test split
* No synthetic resampling to preserve data integrity

### 3. Modeling

* **Logistic Regression (Explainable Baseline)**
* **Random Forest (Performance Benchmark)**

Class imbalance handled using `class_weight='balanced'`.

---

## Model Performance Summary

### Logistic Regression

* **ROC AUC:** ~0.97
* **Recall (Fraud):** ~92%
* Strong interpretability
* Suitable for regulated environments

### Random Forest

* **ROC AUC:** ~0.96
* **Precision (Fraud):** ~96%
* Higher accuracy, lower explainability

---

## Explainability & Business Insights

Key findings:

* Certain PCA-derived components strongly increase fraud risk
* Transaction amount is a meaningful risk signal
* Stable transaction patterns reduce fraud likelihood

Logistic Regression was selected as the primary model due to:

* Full coefficient interpretability
* Regulatory suitability
* Clear business communication

---

## Business Recommendation

* Prioritize **high recall** to minimize missed fraud
* Accept higher false positives with manual review
* Use Logistic Regression as the primary risk scoring layer
* Deploy Random Forest as a secondary validation model

---

## Tools & Libraries

* Python
* Pandas / NumPy
* Scikit-learn
* Matplotlib
* Joblib

---

## Key Skills Demonstrated

* Imbalanced classification
* Fraud detection modeling
* Threshold optimization
* Model explainability
* Business-oriented interpretation
* End-to-end ML pipeline design
