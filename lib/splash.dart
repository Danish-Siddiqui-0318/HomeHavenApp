import 'package:flutter/material.dart';

import 'onboardScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnBoardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xFF156651),
          child: Image(
            image: NetworkImage("https://i.ibb.co/zTnDzpfs/logo.png"),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
