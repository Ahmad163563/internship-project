import 'package:flutter/material.dart';
import 'package:project/home_screen/homescreen.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 40),

            // Title
            Row(
              children: [
                Icon(Icons.arrow_back_ios_new_sharp),
                SizedBox(width: 170,),
                Text(
                  'Carbon',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'Cap',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            // Heading
            Text(
              'Verification Code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Row(
              children: [
                SizedBox(width: 10,),
                Text(
                  'We have sent the 4-digit code to your\nPhone Number and Email Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
            Row(children: [
              SizedBox(width: 10,),
              Text('abc@gmail.com and 0349*****34',style: TextStyle(color: Colors.green),)],),

            SizedBox(height: 30),

            // 4 Boxes for OTP
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  height: 44,
                  width: 189,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Resend'),
                  ),
                ),
                Container(
                  width: 189,
                  height: 44,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green
                ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
                    },
                    child: Text('Verify',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            )
          ],
        ),
      );
  }
}
