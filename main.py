from flask import Flask, request, jsonify
from flask_cors import CORS  # Import CORS
import joblib
import pandas as pd
import numpy as np

app = Flask(__name__)
CORS(app)  # Enable CORS for all routes

# Load model and feature names
model = joblib.load("house_rent_model.pkl")
feature_names = joblib.load("feature_names.pkl")


@app.route("/predict", methods=["POST"])
def predict():
    try:
        data = request.get_json()

        # Extract input values
        area = data["Area"]
        bed = data["Bed"]
        bath = data["Bath"]
        location = data["Location"]

        # Create DataFrame for input
        input_data = pd.DataFrame([[area, bed, bath]], columns=["Area", "Bed", "Bath"])
        location_data = pd.DataFrame(np.zeros((1, len(feature_names) - 3)), columns=feature_names[3:])

        if location in location_data.columns:
            location_data[location] = 1

        input_data = pd.concat([input_data, location_data], axis=1)
        input_data = input_data[feature_names]

        price = model.predict(input_data)[0]
        return jsonify({"predicted_price": round(price, 2)})

    except Exception as e:
        return jsonify({"error": str(e)})


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)  # Allow external connections
