import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/img/on_1.svg',
                      width: media.width,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'اهدافت رو دنبال کن',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: CustomColor.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'IranBakh',
                            fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'نگران نباش اگه تو برنامه ریزی مشکل داری ، تیم ما میتونه بهتون کمک کنه تا به بدن ایده آل خودتون برسین',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'IranYekan',
                            fontSize: 16,
                            color: CustomColor.gray),
                      ),
                    ),
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
