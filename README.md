# 🏥 Public Healthcare Data Analysis & Risk Modeling

## 📌 Overview

This project explores a public health surveillance dataset using **SQL, Python (Pandas), and Power BI**.
The goal was to analyze relationships between demographic, environmental, and healthcare variables, and to develop a **risk scoring model** for evaluating individual health vulnerability.

---

## 🎯 Objectives

* Perform data cleaning and preprocessing
* Explore patterns in disease spread and healthcare metrics
* Build a **risk score model** based on key health factors
* Evaluate whether the model predicts real-world outcomes
* Visualize insights using an interactive Power BI dashboard

---

## 🛠 Tools & Technologies

* **Python (Pandas, sqlalchemy)** → Data cleaning & feature engineering, exxporting into MySQL 
* **SQL (MySQL--> Power Query, DAX, Data Modelling)** → Data querying & transformation
* **Power BI** → Data visualization & dashboard creation

---

## 📊 Key Analysis Performed

### 🔹 Exploratory Data Analysis

* Monthly trends in **case counts and transmission rate**
* Environmental trends (**AQI, temperature, humidity**)
* Vaccination patterns across **locations and disease severity**

---

### 🔹 Risk Score Model

A weighted scoring system was developed:

Risk Score =
(2 × Chronic Conditions) +
(2 × (1 − Vaccination Status)) +
(1 × Immunity Score)

* Higher scores indicate higher vulnerability
* Risk categories: Low, Medium, High

---

### 🔹 Model Evaluation

* Compared risk score with:

  * Transmission rate
  * Disease severity
  * Mortality indicators

---

## 🔍 Key Findings

* Most variables showed **minimal variation**, leading to weak relationships
* Disease outcomes were largely **uniform across demographics**
* **Time-based variation** in case counts was the most significant pattern
* Transmission rate and resource utilization remained relatively stable
* The constructed risk model showed **limited predictive capability**

---

## ⚠️ Limitations

* Dataset may be **synthetic or low in variability**
* Weak correlations across most variables
* Simplified linear risk model
* No causal relationships can be inferred

---

## 🎯 Conclusion

The analysis indicates that demographic and environmental factors had limited influence on disease outcomes within this dataset.
However, temporal trends in case counts suggest possible external or seasonal effects.
The findings highlight the importance of **complex modeling approaches and richer datasets** in healthcare analytics.

---

## 📊 Dashboard

📌 Power BI Dashboard: *(Add your link here)*

---

## 📂 Project Structure

* `/python/` → Data cleaning & feature engineering scripts
* `/sql/` → SQL queries used for analysis
* `/powerbi/` → Dashboard screenshots
* `/data/` → Dataset (if allowed to share)

---

## 🚀 Future Improvements

* Use machine learning models (regression/classification)
* Incorporate real-world datasets
* Add more complex feature engineering

---

## 🙌 Author

Lovisha Arora
