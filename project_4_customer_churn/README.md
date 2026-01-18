# Project 4 — Customer Churn Prediction (Telco)

## Overview

This project analyzes customer churn behavior using the IBM Telco Customer Churn dataset.
The goal is to identify key drivers of churn and build interpretable machine learning models to support retention strategies.

## Dataset

* Source: IBM / Kaggle Telco Customer Churn
* Records: 7,043 customers
* Target: `Churn_binary` (1 = churned, 0 = retained)

## Project Structure

* `01_data_cleaning.ipynb` — Data cleaning and preprocessing
* `02_feature_engineering.ipynb` — Encoding and feature preparation
* `03_modeling.ipynb` — Logistic Regression and Random Forest models
* `04_explainability.ipynb` — Model interpretation and business insights
* `outputs/` — Feature importance results

## Models Used

* Logistic Regression (primary, interpretable model)
* Random Forest (performance comparison)

## Key Results

* Logistic Regression ROC AUC: ~0.84
* Strong churn drivers:

  * Month-to-month contracts
  * Fiber optic internet
  * Electronic check payments
* Strong retention factors:

  * Long-term contracts
  * Longer tenure
  * Tech support and online security

## Business Value

Results highlight actionable levers for churn reduction, including contract optimization, payment method incentives, and service bundling.

## Tools

Python, pandas, scikit-learn, matplotlib
