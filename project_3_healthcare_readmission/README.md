# Healthcare Readmission Risk Analysis

## Objective

Analyze hospital readmission risk using a real public healthcare dataset and build a predictive model to identify high-risk patients.
The project focuses on clinical interpretability and healthcare-relevant metrics rather than pure accuracy.

## Dataset

* **Diabetes 130-US Hospitals (1999–2008)**
* Public dataset containing inpatient encounters, diagnoses, procedures, and medication information.
* Target variable: **30-day hospital readmission (binary)**

## Tools & Technologies

* Python
* pandas, numpy
* scikit-learn
* Jupyter Notebook

## Key Steps

1. Data cleaning and preprocessing
2. Feature engineering using utilization and severity proxies
3. Exploratory data analysis (EDA)
4. Logistic regression modeling with class imbalance handling
5. Model evaluation using recall, precision, and ROC AUC

## Key Findings

* Prior inpatient and emergency utilization strongly predicts readmission risk.
* Longer hospital stays and higher diagnosis counts are associated with increased readmission probability.
* The model prioritizes recall to reduce missed high-risk patients, reflecting real-world healthcare screening practices.

## Model Performance

* Recall (Readmitted): ~46%
* Precision (Readmitted): ~16%
* ROC AUC: ~0.62

## Notes

* Age was excluded due to preprocessing and feature selection decisions.
* The model is intended for **risk stratification**, not diagnosis.
* No visualizations were required for this project; emphasis is on modeling and interpretation.

## Next Steps

* Incorporate lab results or time-series features
* Compare logistic regression with tree-based models
* Deploy as a risk scoring tool
