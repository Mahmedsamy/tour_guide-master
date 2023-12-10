import 'package:flutter/material.dart';
import 'package:tour_guide/layout/auth/login/login_layout.dart';

class TourGuideScreen extends StatelessWidget {
  const TourGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>  const LoginScreen(title: '',)));
          },
          child:  const Image(
            height: 1000,
            image: AssetImage(
                'assets/projlogo.jpeg',
            ),
          ),
        ),
      ),
    );
  }
}
