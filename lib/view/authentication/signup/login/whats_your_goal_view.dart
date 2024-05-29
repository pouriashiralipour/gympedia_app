import 'package:flutter/material.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/rounded_button.dart';

class WhatsYourGoal extends StatefulWidget {
  const WhatsYourGoal({super.key});

  @override
  State<WhatsYourGoal> createState() => _WhatsYourGoalState();
}

class _WhatsYourGoalState extends State<WhatsYourGoal> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: media.width,
            child: Column(
              children: [
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  "What is your goal ?",
                  style: TextStyle(
                      color: CustomColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "It will help us to choose a best\nprogram for you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColor.gray,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: media.width * 0.05,
                ),
                RoundedButton(title: "Confirm", onPressed: () {})
              ],
            ),
          )
        ],
      )),
    );
  }
}
