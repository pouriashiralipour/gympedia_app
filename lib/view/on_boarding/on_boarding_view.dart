import 'package:flutter/material.dart';
import 'package:gympedia/common/color_extentions.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: controller,
            itemBuilder: (context, index) {
              return SizedBox(
                height: media.height,
                width: media.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/on_1.png',
                      width: media.width,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
