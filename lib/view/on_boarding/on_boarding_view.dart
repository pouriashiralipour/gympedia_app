import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gympedia/common_widget/on_boarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectedPage = 0;
  PageController controller = PageController();
  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      selectedPage = controller.page?.round() ?? 0;

      setState(() {});
    });
  }

  List pageList = [
    {
      "title": "Track Your Goal",
      "subtitle":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/img/on_1.svg",
    },
    {
      "title": "Get Burn",
      "subtitle":
          "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/img/on_2.svg",
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/img/on_3.svg",
    },
    {
      "title": "Improve Sleep  Quality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/img/on_4.svg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          PageView.builder(
            controller: controller,
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              return OnBoardingPage(pObj: pageList[index]);
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: CustomColor.primaryColor1,
                borderRadius: BorderRadius.circular(35)),
            child: IconButton(
                onPressed: () {
                  if (pageList.length <= selectedPage) {
                    // Welcome Screnn
                  } else {
                    selectedPage = selectedPage + 1;
                    controller.jumpToPage(selectedPage);
                  }
                },
                icon: Icon(
                  Icons.navigate_next,
                  color: CustomColor.white,
                )),
          ),
        ],
      ),
    );
  }
}
