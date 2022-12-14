import '../constant/constant.dart';

class BmiCalculator {
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDescription;

  BmiCalculator({required this.height, required this.weight});
  BmiCalculator.frombmi(this.bmi);

  double calculateBmi() {
    double heightinMeter = height! / 100;

    bmi = weight! / (heightinMeter * heightinMeter);

    return bmi!;
  }

  String determineBmiCategory() {
    String category = "";
    if (bmi! < 16.0) {
      category = underweightSevere;
    } else if (bmi! < 17) {
      category = underweightModerate;
    } else if (bmi! < 18.5) {
      category = underweightMild;
    } else if (bmi! < 25) {
      category = normal;
    } else if (bmi! < 30) {
      category = overweight;
    } else if (bmi! < 35) {
      category = obeseI;
    } else if (bmi! < 40) {
      category = obeseII;
    } else if (bmi! >= 40) {
      category = obeseIII;
    }
    bmiCategory = category;

    return bmiCategory!;
  }

  String getHealDescription() {
    String desc = "";
    switch (bmiCategory) {
      case underweightSevere:
        desc = "Nampaknya kamu kurang makan, makanlah lebih banyak";
        break;
      case underweightModerate:
        desc =
            "Nampaknya kamu kurang makan, makanlah lebih banyak dan terus berolahraga";
        break;
      case underweightMild:
        desc = "Nampaknya kamu kurang makan, pertahankan pola sehat kamu ya!";
        break;
      case normal:
        desc = "Kamu memiliki berat yang normal, tetap jaga kesehatan ya!";
        break;
      case overweight:
        desc = "Nampaknya kamu naik berat badan, segeralah berolahraga";
        break;
      case obeseI:
        desc = "kurangi porsi makanmu, segeralah berolahraga";
        break;
      case obeseII:
        desc = "mulai lakukan diet ya, serta rutin olahraga";
        break;
      case obeseIII:
        desc = "lakukanlah diet dan olahraga yang lebih strict dan jelas!";
        break;
      default:
    }
    bmiDescription = desc;

    return bmiDescription!;
  }
}
