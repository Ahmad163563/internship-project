import 'package:flutter/material.dart';
import 'package:project/Sign_up/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 bool option1=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
        
            // Welcome Title
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  'Carbon',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 22),
                ),
                Text(
                  'Cap',
                  style: TextStyle(color: Colors.yellow, fontSize: 22),
                )
              ],
            ),
        
            SizedBox(height: 30),
        
            Text(
              'Please Sign in or Sign up to continue',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
        
            SizedBox(height: 30),
        
            // Email Field
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: 368,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  border: Border.all()
                  ),
                child: Text('Enter Your Email'),
                ),
            ),
               SizedBox(height: 20,),
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: 368,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all()
                ),
                child: Row(
                  children: [
                    Text('Enter Your Password'),
                    SizedBox(width: 170,),
                    Icon(Icons.remove_red_eye)
                  ],
                )
              ),
            ),
        
        
            SizedBox(height: 10),
        
            // Remember Password + Forgot
            Row(
        
              children: [
                Row(
                  children: [
                    SizedBox(width: 50,),
                    Checkbox(value: option1, onChanged: ((value) {
                      option1=value!;
                      setState(() {
        
                      });
                    })),
                    Text('Remember'),
                  ],
                ),
                SizedBox(width: 150,),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?'),
                )
              ],
            ),
        
            SizedBox(height: 20),
        
            // Sign In Button
             Center(
               child:
               Container(
                width: 257,
                height: 57,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white),)),
                         ),
             ),
        
            SizedBox(height: 40),
        
            // Sign Up Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("New in CarbonCap?"),
                InkWell(
                 onTap:  (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SIGNup()));
                 },
                    child: Text('Sign in',style: TextStyle(color: Colors.green),))
              ],
            ),

            Center(
              child: Image.asset('assets/share.png',height: 200,width: 200,),
            )
            ]
          ),
      )
      ),
    );
  }
}
