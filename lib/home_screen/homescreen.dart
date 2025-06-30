import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Drawer(child: Icon(Icons.menu),),
        title: Text('HI, ZOHAIB HASSAN',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      actions: [
        Icon(Icons.notification_important)
      ],
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.white70,
                  child: Row(
                    children: [
                      Text(''),
                      Container(
                        height: 35,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )

    );
  }
}
