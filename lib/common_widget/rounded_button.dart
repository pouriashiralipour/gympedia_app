import 'package:flutter/material.dart';
import 'package:gympedia/common/color_extentions.dart';

enum RoundedButtonType { bgGradient, textGradient }

class RoundedButton extends StatelessWidget {
  final String title;
  final RoundedButtonType type;
  final VoidCallback onPressed;
  const RoundedButton({
    super.key,
    required this.title,
    this.type = RoundedButtonType.textGradient,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: CustomColor.primaryG,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(25),
          boxShadow: type == RoundedButtonType.bgGradient
              ? [
                  const BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(0, 2))
                ]
              : null),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textColor: CustomColor.primaryColor1,
        color: type == RoundedButtonType.bgGradient
            ? Colors.transparent
            : CustomColor.white,
        elevation: type == RoundedButtonType.bgGradient ? 0 : 1,
        minWidth: double.maxFinite,
        child: type == RoundedButtonType.bgGradient
            ? Text(
                title,
                style: TextStyle(
                    color: CustomColor.white,
                    fontSize: 16,
                    fontFamily: 'Poopins',
                    fontWeight: FontWeight.w700),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: CustomColor.primaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                          Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  title,
                  style: TextStyle(
                      color: CustomColor.primaryColor1,
                      fontSize: 16,
                      fontFamily: 'Poopins',
                      fontWeight: FontWeight.w700),
                ),
              ),
      ),
    );
  }
}
