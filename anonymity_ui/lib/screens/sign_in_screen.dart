import 'package:anonymity_ui/components/button_clear.dart';
import 'package:anonymity_ui/components/button_with_background.dart';
import 'package:anonymity_ui/components/text_input_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  FocusNode usernameFocusNode = new FocusNode();
  FocusNode passwordFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top:80.0, left: 45.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/ACC5BC.jpg')
              )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_outlined, size: 24.0,)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Container(
              padding: EdgeInsets.only(top:60.0, left: 45.0, right: 45.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome", style: TextStyle(
                    fontFamily: 'Lokey',
                    fontSize: 28.0,
                    color: Color.fromRGBO(14, 140, 137, 1)
                  ),),
                  SizedBox(height: 10.0,),
                  Text("Remember its a journey",
                  style: TextStyle(
                    fontFamily: 'Timeline',
                    fontSize: 19.0
                  ),),
                  Text("not a sprint",
                  style: TextStyle(
                    fontFamily: 'Timeline',
                    fontSize: 19.0
                  ),),
                  SizedBox(height: 20.0,),
                  TextInputField(labelText: "USERNAME", isObscured: false,
                  focusNode: usernameFocusNode,),
                  SizedBox(height: 19.0,),
                  TextInputField(labelText: "PASSWORD", isObscured: true,
                  focusNode: passwordFocusNode,),
                  SizedBox(height: 25.0,),
                  GreenButton(buttonLabel: "Log In", onTap: (){}),
                  SizedBox(height: 19.0,),
                  Center(
                    child: InkWell(
                      child: Text("Forgot Password?", style: TextStyle(
                        color: Color.fromRGBO(14, 140, 137, 1),
                        decoration: TextDecoration.underline,
                        fontSize: 15.0
                      ),),
                    ),
                  ),
                  SizedBox(height: 19.0,),
                  ClearButton(buttonLabel: "Sign Up", onTap: (){})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
