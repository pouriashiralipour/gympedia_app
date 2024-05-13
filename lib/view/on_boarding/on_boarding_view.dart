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
  PageController controller = PageController();
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
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: controller,
            itemCount: pageList.length,
            itemBuilder: (context, index) {
              return OnBoardingPage(pObj: pageList[index]);
            },
          )
        ],
      ),
    );
  }
}
