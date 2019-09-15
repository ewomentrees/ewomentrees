import 'package:ewomentrees/src/pages/donations_page.dart';
import 'package:ewomentrees/src/pages/home_page.dart';
import 'package:ewomentrees/src/pages/profile_page.dart';
import 'package:ewomentrees/src/pages/sign_in_page.dart';
import 'package:ewomentrees/src/pages/sign_up_page.dart';

import 'screens/main_sreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      title: "Connecting Girls and Trees",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),

      home: MainScreen(),

      routes: <String, WidgetBuilder> {
        '/landingpage': (BuildContext context) => new App(),
        '/donationpage': (BuildContext context) => new DonationPage(),
        '/signinpage': (BuildContext context) => new SignInPage(),
        '/signuppage': (BuildContext context) => new SignUpPage(),
        '/profilepage': (BuildContext context) => new ProfilePage(),
        '/homepage': (BuildContext context) => new HomePage(),
      }
    );
  }
}