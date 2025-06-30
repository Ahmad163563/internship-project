import 'package:flutter/material.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Text('CarbonCap',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
        SizedBox(height: 40,),
          Text('Verification Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 10,),
          Text('We have sent the 4-digit code to your\nphone Number and Email Address',textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.black54),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey,width: 2)
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 2)
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 2)
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 2)
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 44,
                width: 189,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Resend'),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Verify'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
