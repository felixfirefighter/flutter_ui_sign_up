import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_sign_up/screens/home_screen.dart';
import 'package:flutter_ui_sign_up/screens/sign_up_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sign Up',
      theme: ThemeData(
        cursorColor: Colors.white,
        fontFamily: 'Nunito',
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/sign-up': (context) => SignUpScreen()
      },
      initialRoute: '/',
    );
  }
}
