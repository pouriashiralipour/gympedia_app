import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/rounded_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: Container(
          width: media.width,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: media.width * 0.1,
              ),
              SvgPicture.asset(
                "assets/img/welcome.svg",
                width: media.width * 0.75,
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Text(
                "Wellcome, Pouria",
                style: TextStyle(
                    color: CustomColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "You are all set now, let’s reach your\ngoals together with us",
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
                  title: "Go To Home",
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const WelcomeView(),
                    //     ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
