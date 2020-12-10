import 'package:flutter/material.dart';
import 'package:ui_app_one/screens/anonymity_screen.dart';
import 'package:ui_app_one/screens/welcome_screen.dart';
import 'package:ui_app_one/screens/safetyTips_screen.dart';
//#D6E2DE -light green
//#489E83 -full button color
//#437262 -welcome message
//#F6584E - kinda pink
//#D6E2DE -image background color


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
     // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      //initialRoute: AnonymityScreen.id,
      //initialRoute: SafetyTipsScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        AnonymityScreen.id: (context) => AnonymityScreen(),
        SafetyTipsScreen.id:(context) => SafetyTipsScreen(),
        // ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
