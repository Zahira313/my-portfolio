# Predicting Diabetes Using Machine Learning

## Overview
This project develops predictive models to identify the risk of diabetes based on several factors, using machine learning techniques. The goal is to enable early diagnosis and preventative care.

## Dataset
The dataset is downloaded from Kaggle [Dataset](https://www.kaggle.com/datasets/iammustafatz/diabetes-prediction-dataset)


## Tools Used
- **Programming Languages**: Python (Jupytr Notebook)
- **Libraries**: Scikit-Learn, Matplotlib, Pandas, NumPy, Seaborn
- **Additional Tools**: Minitab, SPSS

## Key Highlights
- Performed data preprocessing, including standardization and binning, and EDA.
- visualization of individual factors. 
- Implemented clustering techniques such as DBSCAN for grouping patient data.
- Tested various classification models, with Logistic Regression achieving 98% accuracy.

## Steps

1. **Data Preprocessing**:
   - Cleaned and transformed the dataset using Python, View Jupyter Notebook for: [Data Preprocessing](./Data-preprocess.ipynb).
   - Applied standardization and discretization techniques [Code](./Data_Discretise_Standardise.ipynb).
   - Data visualization of each factor [Data Visualization](./Data_Visualisation.ipynb)

2. **Clustering**:
   - Used DBSCAN, achieving a silhouette score of 0.98.
   - View Jupyter Notebook for different Clustering Techniques used:
   - [K-Mean](./K-Mean_Clustering.ipynb)
   - [Hierarchical_clustering](./Hierarchical_clustering.ipynb)
   - [optics](./optics.ipynb)
   - [DBSCAN](./DBSCAN.ipynb)

3. **Classification**:
   - Evaluated models like Decision Tree, K-Nearest Neighbors, and Logistic Regression.
   - Logistic Regression performed best, achieving high accuracy, precision, and recall.
   - View Jupyter Notebook for Classification:
   - [Decision_Tree](./Decision_Tree.ipynb)
   - [KNN](./KNN_Clustering.ipynb)
   - [NBC](./NBC.ipynb)
  
4. **Regression Analysis**:
   - Performed Logistic Regression for the binary target variable.
   -  The AUC score of 0.92 is very high, showing stellar performance.
   -  View Jupyter Notebook for Logit: [Logit_Regression](./Logit_Regression.ipynb)
<!--
## Visualizations
### ROC Curve
![ROC Curve](roc_curve.png)

### Clustering Plot
![DBSCAN Clusters](clusters.png)
-->

## Conclusion
This project demonstrates the potential of machine learning in healthcare and aids early intervention. Future work could incorporate additional features like genetic or dietary data for improved prediction.

<!--
## Files
- **Report**: [Predicting Diabetes using ML.pdf](Predicting_Diabetes_using_ML.pdf)
- **Code**: Python scripts and notebooks for data analysis and modeling.
- **Visualizations**: Images and graphs generated during the project.
-->

## Contact
For inquiries, please contact:
- **Email**: zahira.career@gmail.com
- **GitHub**: https://github.com/Zahira313/my-portfolio
