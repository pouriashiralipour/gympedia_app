import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/round_textField.dart';
import 'package:gympedia/common_widget/rounded_button.dart';
import 'package:gympedia/view/authentication/complete_profile.dart';
import 'package:gympedia/view/authentication/signup/login/login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey there",
                  style: TextStyle(color: CustomColor.gray, fontSize: 16),
                ),
                Text(
                  "Create an Account",
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
                    hintText: 'First Name', icon: 'assets/img/Profile.svg'),
                SizedBox(
                  height: media.width * 0.04,
                ),
                const RoundTextFieldForm(
                    hintText: 'Last Name', icon: 'assets/img/Profile.svg'),
                SizedBox(
                  height: media.width * 0.04,
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
                              // ignore: deprecated_member_use
                              color: CustomColor.gray,
                            )
                          : SvgPicture.asset(
                              "assets/img/visible-Password.svg",
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                              // ignore: deprecated_member_use
                              color: CustomColor.gray,
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isCheck = !isCheck;
                          });
                        },
                        icon: Icon(
                          isCheck
                              ? Icons.check_box_outlined
                              : Icons.check_box_outline_blank_outlined,
                          color: CustomColor.gray,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Expanded(
                        child: Text(
                          'By continuing your accept our Privacy Policy and\nTerm of Use',
                          style: TextStyle(
                              color: CustomColor.gray,
                              fontSize: 10,
                              fontFamily: "Poopins"),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.4,
                ),
                RoundedButton(
                    title: "Register",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: CustomColor.gray,
                            fontSize: 12,
                            fontFamily: "Poopins"),
                      ),
                      Text(
                        " Login",
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
