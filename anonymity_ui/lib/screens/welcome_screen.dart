import 'package:anonymity_ui/components/button_with_background.dart';
import 'package:anonymity_ui/screens/tips_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/ACC5BC.jpg')
                )
              ),
            ),
            Positioned(
                bottom: 0,
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(top:95.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.0),
                  topLeft: Radius.circular(35.0)
                )
              ),
                  child: Column(
                    children: [
                      Text("Keep your leaders \n\t\t\t\t accountable",
                      style: TextStyle(
                        fontFamily: 'Lokey',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 30.0,),
                      Text(
                          "Discover, report, follow-up, and share",
                        style: TextStyle(
                          fontFamily: 'Timeline',
                          fontSize: 16.5,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Center(
                        child: Text("issues that matter to you",
                        style: TextStyle(
                          fontFamily: 'Timeline',
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold
                      ),),
                      ),
                      SizedBox(height: 30.0,),
                      GreenButton(buttonLabel: "Continue Anonymously", onTap: TipScreen,)
                    ],
                  ),
            ),
            )
          ],
        )
    );
  }
  
  void TipScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TipsScreen()));
  }
}
