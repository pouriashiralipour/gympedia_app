import 'package:flutter/material.dart';
import 'package:gympedia/common/color_extentions.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundedButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      textColor: CustomColor.primaryColor1,
      color: CustomColor.white,
      minWidth: double.maxFinite,
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) {
          return LinearGradient(
                  colors: CustomColor.primaryG,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)
              .createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
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
    );
  }
}
