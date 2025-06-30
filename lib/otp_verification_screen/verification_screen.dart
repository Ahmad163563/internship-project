import 'package:flutter/material.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.arrow_back_ios_new_sharp),
              SizedBox(width: 165,),
              Text('Carbon',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.lightBlue),),
              Text('Cap',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.yellow),),
            ],
          ),
        SizedBox(height: 30,),
          Text('Verification Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text('We have sent the 4-digit code to your\nphone Number and Email Address',style: TextStyle(fontSize: 14,color: Colors.black87),),
            ],
          ),
          Row(children: [
            SizedBox(width: 20,),
            Text('abc@gmail.com and 0349******34',style: TextStyle(color: Colors.green,fontSize: 14),)
          ],),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey,width: 2)
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 2)
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 2)
                ),
              ),
              Container(
                height: 80,
                width: 80,
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
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Resend',style: TextStyle(color: Colors.black),),
                ),
              ),
              Container(
                height: 44,
                width: 189,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                child: TextButton(
                  onPressed: () {},
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
