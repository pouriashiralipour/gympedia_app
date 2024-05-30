import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/round_textField.dart';
import 'package:gympedia/common_widget/rounded_button.dart';
import 'package:gympedia/view/authentication/complete_profile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: media.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey there,",
                  style: TextStyle(color: CustomColor.gray, fontSize: 16),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: CustomColor.black,
                      fontSize: 20,
                      fontFamily: 'Poopins',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                const RoundTextFieldForm(
                  hintText: 'Email',
                  icon: 'assets/img/Message.svg',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextFieldForm(
                  hintText: 'Password',
                  icon: 'assets/img/Lock.svg',
                  obscureText: !isVisible,
                  righIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      child: isVisible
                          ? SvgPicture.asset(
                              "assets/img/Hide-Password.svg",
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                              color: CustomColor.gray,
                            )
                          : SvgPicture.asset(
                              "assets/img/visible-Password.svg",
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                              color: CustomColor.gray,
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Expanded(
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                              color: CustomColor.gray,
                              fontSize: 10,
                              fontFamily: "Poopins",
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                RoundedButton(
                    title: "Login",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CompleteProfile(),
                          ));
                    }),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: CustomColor.gray.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      "  Or  ",
                      style: TextStyle(
                          color: CustomColor.black,
                          fontSize: 12,
                          fontFamily: "Poopins"),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: CustomColor.gray.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: CustomColor.white,
                            border: Border.all(
                                width: 1,
                                color: CustomColor.gray.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(15)),
                        child: SvgPicture.asset(
                          "assets/img/facebook.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: CustomColor.white,
                            border: Border.all(
                                width: 1,
                                color: CustomColor.gray.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(15)),
                        child: SvgPicture.asset(
                          "assets/img/google.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account yet?",
                        style: TextStyle(
                            color: CustomColor.gray,
                            fontSize: 12,
                            fontFamily: "Poopins"),
                      ),
                      Text(
                        " Register",
                        style: TextStyle(
                            color: CustomColor.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poopins"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
