import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String buttonLabel;
  final Function onTap;

  GreenButton({@required this.buttonLabel, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width * 0.85,
      height: 40,
      buttonColor: Color.fromRGBO(14, 140, 137, 1),
      child: RaisedButton(
        child: Text(this.buttonLabel, style: TextStyle(
          fontFamily: 'Timeline',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18.0
        ),),
        onPressed: this.onTap,
      ),
    );
  }
}
