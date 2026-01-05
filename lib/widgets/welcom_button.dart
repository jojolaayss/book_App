import 'package:flutter/material.dart';

class WelcomButton extends StatelessWidget {
  const WelcomButton({
    super.key,
    this.buttonText,
    this.onTap,
    this.textColor,
    this.color,
  });
  final String? buttonText;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (e) => onTap!));
      },
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
        ),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: textColor!,
          ),
        ),
      ),
    );
  }
}
