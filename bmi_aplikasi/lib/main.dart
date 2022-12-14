import 'package:bmi_aplikasi/constant/constant.dart';
import 'package:bmi_aplikasi/views/bmi_data_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: primaryColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: primaryColor), //Warna pada appbar keseluruhan
          primarySwatch: Colors.blue,
        ),
        home: const BmiDataScreen());
  }
}
