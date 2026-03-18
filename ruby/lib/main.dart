import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProfileCard());
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Image
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),

              SizedBox(height: 15),

              // Name
              Text(
                'Roshni Gautam',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),

              // Role
              Text('Flutter Developer', style: TextStyle(color: Colors.grey)),

              SizedBox(height: 15),
              Divider(),
              SizedBox(height: 10),

              // Email (CENTERED)
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('gautam3333roshni@email.com'),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // PHONE (100% CENTERED)
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(width: 8),
                    Text('+91 9258638834'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
