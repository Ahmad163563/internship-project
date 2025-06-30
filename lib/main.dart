import 'package:flutter/material.dart';
import 'package:project/Sign_up/sign_up.dart';
import 'package:project/home_screen/homescreen.dart';
import 'package:project/login_screen/login-screen.dart';
import 'package:project/otp_verification_screen/verification_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: LoginScreen()
    );
  }
}
