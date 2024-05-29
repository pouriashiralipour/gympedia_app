import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gympedia/common/color_extentions.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gympedia/view/on_boarding/started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of you r application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymPedia',
      theme: ThemeData(
        primaryColor: CustomColor.primaryColor1,
        fontFamily: 'Poopins',
        useMaterial3: true,
      ),
      home: const StartViewPage(),
    );
  }
}
