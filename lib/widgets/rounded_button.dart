import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
      backgroundColor: color,
    );
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 12),
            color: Colors.black12,
            blurRadius: 17
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        
        child: TextButton(
          style: flatButtonStyle,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
