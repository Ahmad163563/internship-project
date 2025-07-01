import 'package:flutter/material.dart';
import 'package:project/otp_verification_screen/verification_screen.dart';

class SIGNup extends StatefulWidget {
  const SIGNup({super.key});

  @override
  State<SIGNup> createState() => _SIGNupState();
}

class _SIGNupState extends State<SIGNup> {
  String? selectedGender;
  bool option1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp),
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              width: 70,
            ),
            Text(
              'Carbon',
              style: TextStyle(color: Colors.lightBlue),
            ),
            Text(
              'Cap',
              style: TextStyle(color: Colors.yellow),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              'Sign Up',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: 'First Name',
                  border: InputBorder.none
                ),

              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  border: InputBorder.none
                )
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: InputBorder.none
                )
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Phone Number',
                  border: InputBorder.none
                )

              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Address',
                  border: InputBorder.none
                )


              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
            hint: Text("Select Gender"),
        value: selectedGender,
        items: ["Male", "Female"].map((gender) {
          return DropdownMenuItem(
            value: gender,
            child: Text(gender),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedGender = value;
          });
        },
      ),
            ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Create Password',border: InputBorder.none
                )

              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 47,
              width: 328,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',border: InputBorder.none
                )

              ),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Checkbox(
                  value: option1,
                  onChanged: ((value) {
                    option1 = value!;
                    setState(() {});
                  }),
                ),
                Text('I agree with term and condition'),
              ],
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>otpScreen()));},
              child: Container(
                width: 257,
                height: 57,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: Colors.green),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text('Already Have an account?'),
                Text(
                  'Sign here',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
