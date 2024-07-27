import 'package:ecomerce/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo_info.png",
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Please Enter your Mobile Number ",
                      style: TextStyle(
                          fontSize: 20,
                          wordSpacing: 2,
                          letterSpacing: 1,
                          color: Colors.black45),
                    ),
                    Text("to Login/Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 2,
                            letterSpacing: 1,
                            color: Colors.black45)),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '+92365841256',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 50)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: Store(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
