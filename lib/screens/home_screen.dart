import 'package:flutter/material.dart';
import 'package:google_signgin/screens/logout.dart';
import '../helper/authenticaion.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Google SignIn"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            UserAuthentication().signinwithGoogle(context).whenComplete(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Logout()));
            });
          },
          child: Text("Google Signin"),
        ),
      ),
    );
  }
}
