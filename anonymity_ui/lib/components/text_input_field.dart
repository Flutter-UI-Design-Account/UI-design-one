import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String labelText;
  final bool isObscured;
  final FocusNode focusNode;

  TextInputField({@required this.labelText, @required this.isObscured, @required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 85,
      height: 50,
      child: TextFormField(
        focusNode: this.focusNode,
        decoration: InputDecoration(
          labelText: this.labelText,
          labelStyle: TextStyle(
            backgroundColor: focusNode.hasFocus ? Color.fromRGBO(14, 140, 137, 1): Colors.white,
            color:focusNode.hasFocus ? Colors.white: Colors.black
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          )
        ),
        obscureText: this.isObscured,
      ),
    );
  }
}
