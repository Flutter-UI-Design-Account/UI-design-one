import 'package:flutter/material.dart';
import 'package:ui_app_one/components/IconAndText.dart';
import 'package:ui_app_one/components/Button.dart';
import 'package:ui_app_one/screens/welcome_screen.dart';

class SafetyTipsScreen extends StatefulWidget {
  static const String id = 'safetyTips_screen';
  @override
  _SafetyTipsScreenState createState() => _SafetyTipsScreenState();
}

class _SafetyTipsScreenState extends State<SafetyTipsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/ACC5BC.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),

            //Card with  Text and Button
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
                    height: 20,
                  ),

                  //Back Icon
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.keyboard_backspace_outlined,
                          color: Colors.black45,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  //You safety ..... statement
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'Your ',
                          style: TextStyle(
                            color: Color(0xFF489E83),
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                          children: [
                            TextSpan(
                              text: 'safety ',
                              style: TextStyle(
                                color: Color(0xFF489E83),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'matters to us',
                              style: TextStyle(
                                color: Color(0xFF489E83),
                              ),
                            ),
                          ]),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //The following ...
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Text(
                      'The following are tips to say while being active in bringing '
                      'the change the next generation requires',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),

                  IconAndText(
                    icon: Icons.email,
                    description: '\n'
                        'Don\'t include any personal data during submission  , These include your name, your location,'
                        'details, or your work or information about the people around you',
                  ),
                  IconAndText(
                      icon: Icons.account_balance,
                      description: '\n''When reporting incidences of police brutality remove identity in photos/videos that might put the lives of'
                          ' those you\'re trying to help in danger '),
                IconAndText(
                  icon:  Icons.add_alert_sharp,
                  description: '\n' 'We have made it possible for you to use only the '
                      'avatars we provide let that not limit you ,you\'re safe ! When an issue you reported gets resolved, you\'re awarded a badge ',
                ),

                  SizedBox(
                    height: 10,
                  ),

                  //Got it Button

                  Button(
                      horizontalValue: 145,
                      verticalValue: 15,
                      onPressed: () {
                        Navigator.pushNamed(context, WelcomeScreen.id);
                      },
                      buttonText: 'Got it !'),

                  //Learn More
                  SizedBox(
                    height: 10,
                  ),

                  //Learn more
                  Text(
                    'Learn More',
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
                    height: 35,
                  ),

                  // SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
