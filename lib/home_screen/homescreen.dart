import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Hi, Zohaib Hassan"),
        actions: [
          Icon(Icons.notifications, color: Colors.red),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Account Summary Section
              Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,borderRadius: BorderRadius.circular(10)
                  ) ,child:  Center(child: Text("Account Summary", style: TextStyle(fontWeight: FontWeight.bold)))),
              SizedBox(height: 10),
              _buildCard("Carbon Credits Available", "20,000 (tons of co2)", Colors.green),
              _buildCard("Carbon Credits Sold", "25,000 (tons of co2)", Colors.blue),
              _buildCard("Carbon Credits Earned", "30,000 (tons of co2)", Colors.teal),

              SizedBox(height: 20),

              // Tree pool and Add Green Waste
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset('assets/image.png'),
                        SizedBox(height: 8),
                        Text("My Tree Pool", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("80,000+ Trees"),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                          ),
                          child: Icon(Icons.add, size: 30),
                        ),
                        SizedBox(height: 8),
                        Text("Add Green Waste"),
                        SizedBox(height: 16),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: CircularProgressIndicator(
                                value: 0.5,
                                strokeWidth: 6,
                              ),
                            ),
                            Text("50%"),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text("Project Completion"),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Recent Project Section
              Text("Recent Green Projects", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(
                      'assets/Group 9992.png',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      color: Colors.black.withOpacity(0.4),
                      child: Text(
                        "Threefold innovation: economic empowerment, reducing carbon emissions, and raising awareness.",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.forest), label: "Projects"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: "Target"),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String value, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}