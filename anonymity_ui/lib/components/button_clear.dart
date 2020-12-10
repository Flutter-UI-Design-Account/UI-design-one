import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  final String buttonLabel;
  final Function onTap;

  ClearButton({@required this.buttonLabel, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width * 85,
      height: 40,
      buttonColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color.fromRGBO(14, 140, 137, 1)
        )
      ),
      child: RaisedButton(
        child: Text(this.buttonLabel, style: TextStyle(
            fontFamily: 'Timeline',
            color: Color.fromRGBO(14, 140, 137, 1),
            fontWeight: FontWeight.bold,
            fontSize: 18.0
        ),),
        onPressed: this.onTap,
      ),
    );
  }
}
