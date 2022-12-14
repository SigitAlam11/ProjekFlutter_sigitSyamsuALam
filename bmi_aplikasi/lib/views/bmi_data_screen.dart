import 'package:bmi_aplikasi/Helpers/bmi_calculators.dart';
import 'package:bmi_aplikasi/constant/constant.dart';
import 'package:bmi_aplikasi/views/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key});

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 50;
  int umur = 21;
  String? gender;

  @override
  Widget build(BuildContext context) {
    ///Bagiafn AppBAr
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          textAlign: TextAlign.center,
        ),
      ),

      ///bagian card Gender
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  gender = "Pria";
                  setState(() {});
                },
                child: BmiCard(
                  colorBorder: (gender == "Pria") ? Colors.white : primaryColor,
                  child: Stack(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: GenderIconText(text: "Pria", icon: Icons.man),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.check_circle_outline,
                          size: 40,
                          color:
                              (gender == "Pria") ? Colors.white : primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    gender = "Perempuan";
                    setState(() {});
                  },
                  child: BmiCard(
                    colorBorder:
                        (gender == "Perempuan") ? Colors.white : primaryColor,
                    child: Stack(
                      children: [
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: GenderIconText(
                                text: "Perempuan", icon: Icons.woman),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(
                            Icons.check_circle_outline,
                            size: 40,
                            color: (gender == "Perempuan")
                                ? Colors.white
                                : primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),

          ///Bagian SLider Tinggi
          Expanded(
            child: BmiCard(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tinggi Badan",
                  style: labelTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("$height", style: numberTextstyle),
                    const Text(
                      "cm",
                      style: labelTextStyle,
                    ),
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 80,
                  max: 200,
                  activeColor: Colors.white,
                  thumbColor: Colors.green[100],
                  onChanged: (value) {
                    height = value.toInt();
                    setState(() {});
                  },
                ),
              ],
            )),
          ),

          ///Bagian Card Perhitungan berat
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Berat(KG)",
                          style: labelTextStyle,
                        ),
                        Text("$weight", style: numberTextstyle),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                weight += 1;
                                setState(() {});
                              },
                              elevation: 0,
                              shape: const CircleBorder(),
                              fillColor: Colors.white,
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.green,
                                size: 50,
                              ),
                            ),
                            const SizedBox(width: 15),
                            RawMaterialButton(
                              onPressed: () {
                                weight -= 1;
                                setState(() {});
                              },
                              elevation: 0,
                              shape: const CircleBorder(),
                              fillColor: Colors.white,
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.green,
                                size: 50,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                ///Bagian Card Perhitungan Umur
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Umur",
                          style: labelTextStyle,
                        ),
                        Text("$umur", style: numberTextstyle),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                umur += 1;
                                setState(() {});
                              },
                              elevation: 0,
                              shape: const CircleBorder(),
                              fillColor: Colors.white,
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.green,
                                size: 50,
                              ),
                            ),
                            const SizedBox(width: 15),
                            RawMaterialButton(
                              onPressed: () {
                                umur -= 1;
                                setState(() {});
                              },
                              elevation: 0,
                              shape: const CircleBorder(),
                              fillColor: Colors.white,
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.green,
                                size: 50,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///Button untuk melakukan perhitungan
          GestureDetector(
            onTap: () {
              final bmiCalculator =
                  BmiCalculator(height: height, weight: weight);
              bmiCalculator.calculateBmi();
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) {
                  return BmiResultScreen(
                    bmi: bmiCalculator.bmi!,
                  );
                })),
              );
            },
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 18, 175, 7),
              child: const Center(
                  child: Text(
                "Hitung BMI",
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

///Component
class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
    this.colorBorder = primaryColor,
  }) : super(key: key);

  final Widget? child;
  final Color? colorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 82, 193, 12),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: colorBorder!,
          ),
        ),
        margin: const EdgeInsets.all(15),
        child: child);
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
