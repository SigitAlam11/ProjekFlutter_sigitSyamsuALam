import 'package:bmi_aplikasi/Helpers/bmi_calculators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BmiCalculator calculator = BmiCalculator(height: 100, weight: 50);

  group("Obese Test", () {
    test("Test bmi calculators: obese category calculation", () {
      final result = calculator.calculateBmi();

      expect(result, 50);
    });

    test("Test bmi calculators: obese category text", () {
      final result = calculator.determineBmiCategory();

      expect(result, contains("Obese"));
    });

    test("Test bmi calculators: obese health desc", () {
      final result = calculator.getHealDescription();

      expect(result, contains("strict"));
    });
  });

  group("Normal Test", () {
    test("Test bmi calculators: Normal category calculation", () {
      calculator.height = 150;
      calculator.weight = 45;
      final result = calculator.calculateBmi();

      expect(result, 20);
    });

    test("Test bmi calculators: Normal category text", () {
      final result = calculator.determineBmiCategory();

      expect(result, contains("Normal"));
    });

    test("Test bmi calculators: obese health desc", () {
      final result = calculator.getHealDescription();

      expect(result, contains("normal"));
    });
  });

  group("Normal Test dengan desimal", () {
    test("Test bmi calculators: Normal category calculation", () {
      calculator.height = 150;
      calculator.weight = 50;
      final result = calculator.calculateBmi();
      final convertedResult = result.toStringAsFixed(1);
      expect(convertedResult, "22.2");
    });

    test("Test bmi calculators: Normal category text", () {
      final result = calculator.determineBmiCategory();

      expect(result, contains("Normal"));
    });

    test("Test bmi calculators: obese health desc", () {
      final result = calculator.getHealDescription();

      expect(result, contains("normal"));
    });
  });
}
