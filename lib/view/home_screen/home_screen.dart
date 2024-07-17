import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a = 0;
  Color bgColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  bgColor = Colors.red;
                  setState(() {});
                },
                child: Text(
                  "red",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
            TextButton(
                onPressed: () {
                  bgColor = Colors.green;
                  setState(() {});
                },
                child: Text(
                  "Green",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            a++;
            print(a);
          });
        },
      ),
    );
  }
}
