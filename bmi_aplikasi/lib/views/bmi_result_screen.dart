import 'package:bmi_aplikasi/views/bmi_data_screen.dart';
import 'package:flutter/material.dart';
import '../Helpers/bmi_calculators.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({
    super.key,
    required this.bmi, //this.bmiCalculator
  });
  final double bmi;
  //final BmiCalculator? bmiCalculator;

  @override
  Widget build(BuildContext context) {
    final BmiCalculator bmiCalculator = BmiCalculator.frombmi(bmi);
    //final bmiCategory =
    bmiCalculator.determineBmiCategory();
    //final bmiDesc =
    bmiCalculator.getHealDescription();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Hitung BMI"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Hasil Perhitungan",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiCard(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiCalculator.bmiCategory ?? "",
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: const TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      bmiCalculator.bmiDescription ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 19, 195, 7),
              child: const Center(
                  child: Text(
                "Perhitungan Ulang",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
