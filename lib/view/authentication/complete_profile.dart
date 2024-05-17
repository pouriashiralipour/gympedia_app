import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gympedia/common/color_extentions.dart';
import 'package:gympedia/common_widget/round_textField.dart';
import 'package:gympedia/common_widget/rounded_button.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController textData = TextEditingController();
  String chosenValue1 = "";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                'assets/img/Vector-Section.svg',
                width: media.width,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Text(
                "Let's complete your profile",
                style: TextStyle(
                    color: CustomColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poopins'),
              ),
              Text(
                "It will help us to know more about you!",
                style: TextStyle(
                  color: CustomColor.gray,
                  fontSize: 12,
                  fontFamily: 'Poopins',
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: CustomColor.grayLight,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                "assets/img/2 User.svg",
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                                color: CustomColor.gray,
                              )),
                          Expanded(
                            child: DropdownButton(
                                value:
                                    chosenValue1.isEmpty ? null : chosenValue1,
                                borderRadius: BorderRadius.circular(15),
                                items: ["Male", "Female"]
                                    .map((name) => DropdownMenuItem(
                                        value: name,
                                        child: Text(
                                          name,
                                          style: TextStyle(
                                              color: CustomColor.gray,
                                              fontSize: 14),
                                        )))
                                    .toList(),
                                hint: Text(
                                  'Choose Gender',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: CustomColor.gray,
                                      fontFamily: 'Poopins'),
                                ),
                                isExpanded: true,
                                onChanged: (value) {
                                  setState(() {
                                    chosenValue1 = value!;
                                  });
                                }),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                    // RoundTextFieldForm(
                    //   controller: textData,
                    //   hintText: 'Choose Gender',
                    //   icon: 'assets/img/2 User.svg',
                    // ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    const RoundTextFieldForm(
                        hintText: 'Date of Birth',
                        icon: 'assets/img/Calendar.svg'),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: RoundTextFieldForm(
                                hintText: "Your Weight",
                                icon: "assets/img/weight-scale 1.svg")),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: CustomColor.secondaryG),
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "KG",
                            style: TextStyle(
                                color: CustomColor.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: RoundTextFieldForm(
                                hintText: "Your Weight",
                                icon: "assets/img/Swap.svg")),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: CustomColor.secondaryG),
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "CM",
                            style: TextStyle(
                                color: CustomColor.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.2,
                    ),
                    RoundedButton(title: "Next >", onPressed: () {})
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
