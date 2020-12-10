import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final String buttonText;
  final double horizontalValue;
  final double verticalValue;

  Button(
      {@required this.onPressed,
      @required this.buttonText,
      @required this.horizontalValue,
      @required this.verticalValue});

  @override
  Widget build(BuildContext context) {
    //double horizontalValue=0;

    return GestureDetector(
      onTap: onPressed,
      child: Material(
        color: Color(0xFF489E83),
        borderRadius: BorderRadius.circular(5.0),
        elevation: 5.0,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalValue, vertical: verticalValue),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
