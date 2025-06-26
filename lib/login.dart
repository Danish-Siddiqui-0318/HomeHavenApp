import 'package:ecomm_app/registerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey.shade300, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Welcome Back! ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "  Enter your email to start shopping and get\n  awesome deals today!",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Email',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    labelText: 'Password',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "  Forgot Your Password?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF156651),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                width: double.infinity,
                // color: Colors.green.shade900,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF156651),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 1, width: 180, color: Colors.grey),
                  Text("OR"),
                  Container(height: 1, width: 175, color: Colors.grey),
                ],
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                width: double.infinity,
                // color: Colors.green.shade900,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFF156651)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.google),
                    SizedBox(width: 10),
                    Text(
                      "Log in with Google",
                      style: TextStyle(
                        color: Color(0xFF156651),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                width: double.infinity,
                // color: Colors.green.shade900,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFF156651)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue.shade700),
                    SizedBox(width: 10),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(
                        color: Color(0xFF156651),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registerpage()),
                      );
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        color: Color(0xFF156651),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
