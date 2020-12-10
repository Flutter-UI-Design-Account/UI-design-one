import 'package:flutter/material.dart';
import 'package:ui_app_one/screens/anonymity_screen.dart';
import 'package:ui_app_one/components/Button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ACC5BC.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),

                //IconButton
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace_outlined,
                          color: Colors.black45,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                ),

                SizedBox(
                  height: 70,
                ),
                //Card with Welcome Text and Text field Inputs
                Material(
                  elevation: 10.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),

                      //Welcome
                      Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF437262),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),

                      //Remember it's a journey not a sprint
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                                text: 'Remember it\'s a ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  letterSpacing: 1,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'journey' '\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'not a sprint',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //Username Text field
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'USERNAME',
                            labelStyle: TextStyle(
                              backgroundColor: Color(0xFF489E83),
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      //Password Text Field
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xFFE5E5E5),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                              ),
                              labelText: 'PASSWORD',
                              labelStyle: TextStyle(
                                backgroundColor: Color(0xFF489E83),
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              prefixText: ' ',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                                color: Color(0xFF489E83),
                              ),
                              suffixStyle: const TextStyle(color: Colors.green),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              )),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      //Login Button
                      Button(
                          horizontalValue: 147,
                          verticalValue: 20,
                          onPressed: () {
                            Navigator.pushNamed(context, AnonymityScreen.id);
                          },
                          buttonText: 'Log In'),

                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 150, vertical: 15),
                      //   color: Color(0xFF489E83),
                      //   child: Text(
                      //     'Log In',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),

                      //Forget Password
                      Text(
                        'Forget Password ?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF489E83),
                          decorationThickness: 1.5,
                          color: Color(0xFF489E83),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //Sign UP button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AnonymityScreen.id);
                        },
                        child: Container(
                          width: screenWidth - 60,
                          //height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF489E83),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 140, vertical: 12),
                          child: Text(
                            'SIgn Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF489E83),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).viewInsets.bottom),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
