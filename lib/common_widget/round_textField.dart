import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gympedia/common/color_extentions.dart';

class RoundTextFieldForm extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final bool obscureText;
  final String icon;
  final Widget? righIcon;
  final EdgeInsets? margin;
  const RoundTextFieldForm({
    super.key,
    this.righIcon,
    this.obscureText = false,
    this.keyboardType,
    this.margin,
    this.controller,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: CustomColor.grayLight,
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            suffixIcon: righIcon,
            prefixIcon: Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                icon,
                width: 20,
                height: 20,
                fit: BoxFit.contain,
                // ignore: deprecated_member_use
                color: CustomColor.gray,
              ),
            ),
            hintStyle: TextStyle(
              color: CustomColor.gray,
              fontSize: 12,
            )),
      ),
    );
  }
}
