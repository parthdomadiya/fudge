// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  void initState() {
    myContext = context;
    _loadNextScreen();
    super.initState();
  }

  late BuildContext myContext;

  _loadNextScreen() async {
    await Future.delayed(Duration(milliseconds: 1000));
    Navigator.pushReplacementNamed(context, Routes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: Image.asset(
          //     ConstanceData.BlossomLogo,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // SizedBox(
          //   height: 15,
          // ),
          Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
