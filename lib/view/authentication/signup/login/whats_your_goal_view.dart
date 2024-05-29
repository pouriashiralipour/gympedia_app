import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/rounded_button.dart';
import 'package:gympedia/view/authentication/signup/login/welcome_view.dart';

class WhatsYourGoal extends StatefulWidget {
  const WhatsYourGoal({super.key});

  @override
  State<WhatsYourGoal> createState() => _WhatsYourGoalState();
}

class _WhatsYourGoalState extends State<WhatsYourGoal> {
  CarouselController buttonCarouselController = CarouselController();
  List goalArr = [
    {
      "image": "assets/img/Vector1.svg",
      "title": "Improve Shape",
      "subtitle":
          "I have a low amount of body fat\nand need / want to build more\nmuscle",
    },
    {
      "image": "assets/img/Vector2.svg",
      "title": "Lean & Tone",
      "subtitle":
          "I’m “skinny fat”. look thin but have\nno shape. I want to add learn\nmuscle in the right way",
    },
    {
      "image": "assets/img/Vector3.svg",
      "title": "Lose a Fat",
      "subtitle":
          "I have over 20 lbs to lose. I want to\ndrop all this fat and gain muscle\nmass",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: CarouselSlider(
                items: goalArr
                    .map((gObj) => Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: CustomColor.primaryG,
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsets.symmetric(
                              vertical: media.width * 0.1, horizontal: 25),
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  gObj['image'].toString(),
                                  width: media.width * 0.5,
                                  fit: BoxFit.fitWidth,
                                ),
                                SizedBox(
                                  height: media.width * 0.1,
                                ),
                                Text(
                                  gObj['title'].toString(),
                                  style: TextStyle(
                                      color: CustomColor.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  width: media.width * 0.1,
                                  height: 1,
                                  color: CustomColor.white,
                                ),
                                SizedBox(
                                  height: media.width * 0.02,
                                ),
                                Text(
                                  gObj['subtitle'].toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColor.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.7,
                    aspectRatio: 0.74,
                    initialPage: 0)),
          ),
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
                RoundedButton(
                    title: "Confirm",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeView(),
                          ));
                    }),
              ],
            ),
          )
        ],
      )),
    );
  }
}
