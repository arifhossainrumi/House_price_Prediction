# House Price Prediction

## 📌 Project Overview
The House Price Prediction project aims to analyze rental prices in Dhaka and build a machine learning model to predict house prices based on various features. The project follows a structured approach that includes data collection, preprocessing, exploratory data analysis, model development, and deployment using a Flask API.

## 📊 Data Source
The dataset used in this project is sourced from `houserentdhaka.csv`, which contains rental listings in Dhaka. The dataset includes essential features such as:
- Location
- Area (sqft)
- Number of bedrooms
- Number of bathrooms
- Rental price

## 🔍 Data Cleaning & Preprocessing
To ensure high-quality data, several preprocessing steps were performed:
- 🗑 **Removing unnecessary columns**: Dropped the index column (`Unnamed`).
- ❌ **Handling missing values**: Checked for null values and handled them appropriately.
- 🔢 **Feature engineering**:
  - Converted `Area` from a string format to numerical (removing ‘sqft’ and commas).
  - Extracted numerical values from `Price` for easier computation.
- ⚠ **Filtering outliers**: Analyzed and filtered unusual values for `Bed` and `Bath`.

## 📈 Exploratory Data Analysis (EDA)
EDA was conducted to understand the data distribution and relationships between features. Key insights include:
- 📊 **Price Distribution**: Analyzed how house prices vary across different locations.
- 📌 **Correlation Analysis**: Checked relationships between area, price, and the number of bedrooms/bathrooms.
- 📷 **Visualization**: Used Seaborn and Matplotlib to create:
  - Histograms
  - Scatter plots
  - Box plots
  - Heatmaps

## 🤖 Model Development
A machine learning model was developed using **Linear Regression** to predict house prices:
- 🔀 **Data Splitting**: The dataset was divided into training and test sets.
- 📡 **Algorithm Selection**: Linear Regression was chosen as the primary model.
- 🎯 **Model Training**: The model was trained using `train_test_split` from Scikit-learn.
- 📊 **Evaluation Metrics**:
  - Mean Absolute Error (MAE)
  - R-squared score

## 🚀 Deployment Using Flask API
To make the model accessible, a **Flask API** was developed:
- 🌐 **Creating Endpoints**: The API allows users to input property details and get a predicted price.
- 🔄 **Integration**: The trained model was loaded using `joblib`.
- ☁ **Hosting**: The API was tested locally and can be deployed on cloud platforms like **Heroku** or **AWS**.

## 🎯 Live Demo
You can check out the live demo of the deployed project here:
🔗 [Live Demo Link](https://arifhossainrumi.github.io/) 

## 📌 Recommendations
Based on the analysis and model performance, the following recommendations are made:
- 📊 **Enhancing Data Quality**: More diverse and up-to-date data can improve accuracy.
- 🔍 **Feature Expansion**: Including additional features like neighborhood amenities or building age.
- 🏆 **Alternative Models**: Trying advanced models such as **Random Forest** or **Gradient Boosting** for better predictions.

## 🛠 Technical Tools Used
The following tools and technologies were used in this project:
- 💻 **Programming Language**: Python
- 📚 **Libraries**: Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
- 🤖 **Machine Learning Model**: Linear Regression
- 🌍 **Web Framework**: Flask
- 📦 **Deployment**: Joblib for model persistence, Flask for API development

---


