import 'dart:math';

import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  final int selectedIndex = Random().nextInt(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex, // Random selection
        onTap: (index) {
          // No functionality — do nothing
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Project',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Target',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),

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
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.topLeft,
                height: 200,
                width: 400,
                color: Colors.white70,
                child:
                Row(
                  children: [
                    Text('Carbon Credits Available',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                    SizedBox(width: 20,),
                    Container(
                      height: 35,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        color: Colors.green
                      ),
                      child: Center(child: Text('20,000 tons of co2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),

              ),
              
            ],
          ),
        )

    );
  }
}
