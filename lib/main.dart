import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House Rent Predictor',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RentPredictionScreen(),
    );
  }
}

class RentPredictionScreen extends StatefulWidget {
  @override
  _RentPredictionScreenState createState() => _RentPredictionScreenState();
}

class _RentPredictionScreenState extends State<RentPredictionScreen> {
  final TextEditingController areaController = TextEditingController();
  final TextEditingController bedController = TextEditingController();
  final TextEditingController bathController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  String? predictedPrice;

  Future<void> predictRent() async {
    final url = Uri.parse('https://house-rent-prediction-eg9o.onrender.com/predict'); // Update for deployment
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "Area": int.parse(areaController.text),
        "Bed": int.parse(bedController.text),
        "Bath": int.parse(bathController.text),
        "Location": locationController.text
      }),
    );

    final data = jsonDecode(response.body);
    setState(() {
      predictedPrice = data['predicted_price'] != null
          ? "Predicted Rent: ${data['predicted_price']} BDT"
          : "Error: ${data['error']}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('House Rent Predictor')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: areaController, decoration: InputDecoration(labelText: 'Area (sqft)'), keyboardType: TextInputType.number),
            TextField(controller: bedController, decoration: InputDecoration(labelText: 'Number of Beds'), keyboardType: TextInputType.number),
            TextField(controller: bathController, decoration: InputDecoration(labelText: 'Number of Baths'), keyboardType: TextInputType.number),
            TextField(controller: locationController, decoration: InputDecoration(labelText: 'Location')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: predictRent, child: Text('Predict Rent')),
            SizedBox(height: 20),
            if (predictedPrice != null)
              Text(predictedPrice!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
