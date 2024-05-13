import 'package:flutter/material.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/view/on_boarding/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymPedia',
      theme: ThemeData(
        primaryColor: CustomColor.primaryColor1,
        fontFamily: 'Iran Bakh ',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingView(),
    );
  }
}
