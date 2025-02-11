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
Exploratory Data Analysis (EDA) was performed to understand the dataset better and uncover patterns that influence rental prices in Dhaka. We identified trends and relationships between factors such as location, area, and price by analyzing different attributes. 

**The following EDA steps were carried out:**

- House Rent Price Distribution
- Price Categories by Location
- Price per Square Foot Distribution
- Dhaka Rental Market Insights
- Real Estate Correlation Analysis 
- Rent Price Distribution Analysis
- Area vs. Rent Price in Dhaka
- Price Variation Across Locations in Dhaka
- Trend of Rent Prices by Apartment Size
 
---



### 1️⃣ **House Rent Price Distribution**
#### 📜 Code:
```python
sns.set_style("whitegrid")

# Plot distribution of house rent prices
plt.figure(figsize=(10, 5))
sns.histplot(df1["Price"], bins=50, kde=True, color="blue")
plt.xlabel("Rent Price (Taka)")
plt.ylabel("Frequency")
plt.title("Distribution of House Rent Prices in Dhaka")
plt.show()
```

#### 🖼️ Visualization:
![House Rent Price Distribution](images/MonthlySales.png)

#### 🚀 Key Insights  
- Most house rents in Dhaka are concentrated in the lower range.  
- Prices drop sharply after `100,000 Taka`, with very few homes priced over `300,000 Taka`.  

#### 🔍 **Key Takeaways:**  
- **Affordable housing dominates** the market.  
- **Limited high-end rentals** suggest a potential market gap.  

---

### 2️⃣ **Price Categories by Location**
- **Block D, Mirpur** and **Sector 10, Uttara** are budget-friendly zones with many low-priced listings.  
- **Dhanmondi** and **Mohammadpur** offer more medium to high-priced rentals.  
- Luxury rentals are rare but present in **Dhanmondi** and **Paikpara Ahmed Nagar Mirpur**.  

#### 🔍 **Key Takeaways:**  
- **Affordable zones:** Mirpur and Uttara dominate the budget-friendly market.  
- **Premium potential:** Dhanmondi shows demand for upscale housing.  

---

### 3️⃣ **Price per Square Foot Distribution**  
- Most homes in Dhaka have rent prices below `50 BDT per square foot`.  
- Prices above `100 BDT per square foot` are rare, indicating limited premium listings.  

#### 🔍 **Key Takeaways:**  
- **Rent prices are generally affordable**, with fewer high-end properties available.  

---

# 📊 Dhaka Rental Market Insights  

## 🚀 Key Insights  
- 🏡 **Most Expensive Areas:** Baridhara (Block K & J), Gulshan (1 & 2), and DOHS (Banani, Mohakhali, Baridhara) dominate high-end rentals.  
- 💰 **Luxury Rent Gap:** Top areas exceed **100,000 Taka**, while others drop significantly.  
- 📉 **Mid-Tier Options:** Dhanmondi, Uttara, and Kakrail offer premium but more affordable rents.  

## 🔍 Key Takeaways  
✅ **Baridhara & Gulshan = Ultra-Luxury Living**  
✅ **DOHS Areas = High-End but Slightly Cheaper**  
✅ **Dhanmondi & Uttara = Affordable Premium Choices**  

---

# 📊 Real Estate Correlation Analysis  

## 🚀 Key Insights  
- 🏡 **Area, Bedrooms, and Bathrooms** are highly correlated (**0.75 - 0.81**) with **Price**, meaning bigger homes tend to cost more.  
- 🔄 **Price per Sqft is weakly correlated with Area, Beds, and Baths** but strongly linked to **Price (0.76)**.  
- ⚠️ **Duplicate column issue:** "price_per_sqft" appears twice, which may need fixing in the dataset.  

## 🔍 Key Takeaways  
✅ **Larger Homes = Higher Prices**  
✅ **Price per Sqft drives overall pricing**  
✅ **Dataset Cleanup Needed (Duplicate Column)**  

---

# 📊 Rent Price Distribution Analysis  

## 🚀 Key Insights  
- 🏡 **More Bedrooms = Higher Rent:** Rent generally increases with the number of bedrooms.  
- 🛁 **Bathrooms Impact Rent:** Higher bath counts (4, 6, 7) tend to have higher median rents.  
- 🎯 **Wide Price Range:** Rent prices show significant variation, with many outliers, especially for 3-4 bedroom units.  
- ⚠ **Luxury Segment:** Properties with **6+ bedrooms & 7 baths** have the highest rent, indicating a niche high-end market.  

## 🔍 Key Takeaways  
✅ **Larger Homes = Higher Rent**  
✅ **More Bathrooms Add Value**  
✅ **High Variability = Diverse Rental Market**  

---

# 📊 Area vs. Rent Price in Dhaka

## 🚀 Key Insights
- 📏 **Bigger Space = Higher Rent:** Larger apartments generally have higher rent prices.
- 📈 **Positive Correlation:** The trend shows that as area (sqft) increases, rent also rises.
- 🎯 **High Rent Variability:** Even for similar-sized properties, rent prices vary widely.
- ⚠ **Luxury Segment:** Some large properties (4000+ sqft) command extremely high rents, indicating a premium market.

## 🔍 Key Takeaways
- ✅ **More Space Costs More**
- ✅ **Rent Prices Aren’t Fixed—They Fluctuate**
- ✅ **Luxury Properties Drive Up the Market**

---

# 📊 Price Variation Across Locations in Dhaka

## 🚀 Key Insights
- 🏙 **Location Matters:** Rent prices vary significantly based on location.
- 📉 **Median Rent Differences:** Some areas have consistently lower median rents, while others, like Dhanmondi, show much higher price ranges.
- 🎯 **High Outliers:** Several locations exhibit extreme price outliers, especially in upscale areas.
- ⚖ **Price Dispersion:** Even within the same area, rent prices fluctuate, indicating diverse property options.

## 🔍 Key Takeaways
- ✅ **Location Strongly Affects Rent**
- ✅ **Upscale Areas Have Higher Price Variability**
- ✅ **Extreme Outliers Exist in Premium Markets**

---

# 📊 Trend of Rent Prices by Apartment Size

## 🚀 Key Insights
- 📈 **Larger Apartments = Higher Rent:** Rent prices tend to increase as apartment size grows.
- 🔄 **Fluctuations in High-End Market:** While the general trend is upward, there are fluctuations in larger apartments, suggesting variability in luxury pricing.
- 🎯 **Steep Price Growth:** Beyond 3000 sqft, rent prices rise significantly, with some extreme spikes for premium properties.
- ⚠ **Outliers in Large Apartments:** Some luxury apartments show rent prices that deviate far above the average trend.

## 🔍 Key Takeaways
- ✅ **Bigger Apartments Have Higher Rent**
- ✅ **Luxury Market Shows High Price Variability**
- ✅ **Steep Rent Growth Beyond 3000 sqft**

---

## 📈 Recommendations  
- 💡 Encourage investment in **premium housing** to address the limited high-end market.  
- 💡 Maintain a strong focus on **affordable housing** for mid-income families.  
- 💡 Promote **balanced development** in both budget-friendly and premium segments.  

---

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
- ☁ **Hosting**: The API has been tested locally and deployed using Render & GitHub host.

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


