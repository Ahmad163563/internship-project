import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 30,),
              Text('9:41',style: TextStyle(color: Colors.blue),),
              SizedBox(width: 191,),
              Image.asset('group.png',height: 150,width: 250,)
            ],
          )
        ],
      ),
    );
  }
}
