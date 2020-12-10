import 'package:anonymity_ui/components/button_with_background.dart';
import 'package:anonymity_ui/components/tips_card.dart';
import 'package:anonymity_ui/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class TipsScreen extends StatefulWidget {
  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/ACC5BC.jpg')
              )
            ),
          ),
          Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.95,
              child: Container(
                padding: EdgeInsets.only(top: 19.0, left: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back_outlined, size: 24.0,),
                    SizedBox(height: 15.0,),
                    Center(child: Container(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Text("Your safety matters to us", style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromRGBO(14, 140, 137, 1),
                            fontFamily: 'Lokey'
                          ),),
                          SizedBox(height: 15.0,),
                          Text("The following are tips to stay safe while", style: TextStyle(
                            fontSize: 17.0
                          ),),
                          Text("being active in bringing the change the", style: TextStyle(
                            fontSize: 17.0
                          ),),
                          Text("next generation requires.", style: TextStyle(
                            fontSize: 17.0
                          ),),
                          SizedBox(height: 10.0,),
                          TipsCard(info: "Don't include any personal data during submission"
                              "These includes your name, location, details and your work"
                              "or information about the people around you."),
                          SizedBox(height: 10.0,),
                          TipsCard(info: "Don't include any personal data during submission"
                              "These includes your name, location, details and your work"
                              "or information about the people around you."),
                          SizedBox(height: 10.0,),
                          TipsCard(info: "Don't include any personal data during submission"
                              "These includes your name, location, details and your work"
                              "or information about the people around you."),
                          SizedBox(height: 20.0,),
                          GreenButton(buttonLabel: "Got it", onTap: navigateToSignInScreen),
                          SizedBox(height: 10.0,),
                          InkWell(
                            child: Text("Learn More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 16.0,
                              color: Color.fromRGBO(14, 140, 137, 1)
                            ),),
                          )
                        ],
                      ),
                    ),)
                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
  void navigateToSignInScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }
}
