import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/rounded_button.dart';

class StartViewPage extends StatefulWidget {
  const StartViewPage({super.key});

  @override
  State<StartViewPage> createState() => _StartViewPageState();
}

class _StartViewPageState extends State<StartViewPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: CustomColor.primaryG,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                  'Fitness',
                  style: TextStyle(
                      color: CustomColor.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      fontFamily: 'Poopins'),
                ),
                Text(
                  'Everybody can Train',
                  style: TextStyle(
                      color: CustomColor.gray,
                      fontSize: 18,
                      fontFamily: 'Poopins'),
                ),
                const Spacer(),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: RoundedButton(
                      title: 'Get Started',
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
