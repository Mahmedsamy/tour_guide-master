import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.brown,
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text(
                          'الصفحة الرئيسية',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white70,
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/projlogo.jpeg',
                          height: 100.0,
                          width: 100.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
