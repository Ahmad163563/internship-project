import 'package:flutter/material.dart';

class SIGNup extends StatefulWidget {
  const SIGNup({super.key});

  @override
  State<SIGNup> createState() => _SIGNupState();
}

class _SIGNupState extends State<SIGNup> {
  bool option1=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new_sharp),
      title: Row(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(width: 130,),
          Text('Carbon',style: TextStyle(color: Colors.lightBlue),),Text('Cap',style: TextStyle(color: Colors.yellow),)],),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
                Center(child: Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),)),
               SizedBox(height: 20,),
            Container(height: 47,
            width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey),
        
                color: Colors.white
              ),child: Text('First Name',style: TextStyle(color: Colors.grey),),),
        SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Last Name',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Enter Your Email',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Enter your phone number',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Enter your Address',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Select gender',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Create Your Password ',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 12,),
            Container(height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white
              ),child: Text('Confirm Password',style: TextStyle(color: Colors.grey),),),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 89,),
                Checkbox(value: option1, onChanged: ((value){
                  option1=value!;
                  setState(() {

                  });
                }),
                ),
                Text('I agree with term and condition'),
              ],
            ),
            Container(
              width: 257,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green
              ),
              child: Center(
                child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 120,),
                Text('Already Have an account?'),
                Text('Sign here',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
