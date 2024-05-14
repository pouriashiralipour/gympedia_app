import 'package:flutter/material.dart';
import 'package:gympedia/common/color_extentions.dart';
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: media.width * 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List.generate(pageList.length, (index) => buildDot(index)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircularProgressIndicator(
                      color: CustomColor.primaryColor1,
                      value: (selectedPage + 1) / 4,
                      strokeWidth: 2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: CustomColor.primaryColor1,
                        borderRadius: BorderRadius.circular(35)),
                    child: IconButton(
                        onPressed: () {
                          if (selectedPage < pageList.length) {
                            selectedPage = selectedPage + 1;
                            controller.animateToPage(selectedPage,
                                duration: const Duration(milliseconds: 600),
                                curve: Curves.bounceInOut);
                            controller.jumpToPage(selectedPage);
                          } else {
                            // NEXT SCREEN
                          }
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          color: CustomColor.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      width: selectedPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: selectedPage == index
            ? CustomColor.primaryColor1
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
