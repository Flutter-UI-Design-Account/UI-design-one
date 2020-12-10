import 'package:flutter/material.dart';
import 'package:ui_app_one/screens/safetyTips_screen.dart';
import 'package:ui_app_one/components/Button.dart';

class AnonymityScreen extends StatefulWidget {
  static const String id = 'anonymity_screen';
  @override
  _AnonymityScreenState createState() => _AnonymityScreenState();
}

class _AnonymityScreenState extends State<AnonymityScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(child:
    Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/ACC5BC.jpg") ,
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: ListView(
          children: [

            SizedBox(
              height: 30,
            ),

            //Back Icon
            GestureDetector(
              onTap:(){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child:Icon(
                    Icons.keyboard_backspace_outlined,
                    color: Colors.black45,
                    size: 35,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 60,
            ),

            //Safety in Anonymity
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: '   Safety in ''\n',
                    style: TextStyle(
                      color:  Colors.black,
                      fontSize: 18,
                      letterSpacing: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'ANONYMITY',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ), ),

            SizedBox(
              height: 180,
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
                    height: 100,
                  ),

                  //Welcome
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right:60,bottom: 30),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Keep your leaders accountable',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  //Discover,report ....
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Discover, report, follow-up, and share issues that matter to you',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  //Login Button

                  Button(
                      horizontalValue: 90,
                      verticalValue: 20,
                      onPressed: () {
                        Navigator.pushNamed(context, SafetyTipsScreen.id);
                      },
                      buttonText: 'Continue Anonymously'),
                  SizedBox(
                    height: 95,
                  ),

                 // SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
                ],
              ),
            ),


          ],
        ),
      ),
    ),);
  }
}
