import 'package:ecomerce/widget/designcircle.dart';
import 'package:flutter/material.dart';

class ContainerClipart extends StatelessWidget {
  const ContainerClipart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 74, 85, 241),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      width: double.infinity,
      padding: EdgeInsets.all(0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(bottom: -200, right: 290, child: DesignCricle()),
          Positioned(
            left: 30,
            top: 20,
            child: Image.asset(
              "assets/images/person.png",
            ),
          ),
          Positioned(
            left: 430,
            top: 20,
            child: Icon(
              size: 35,
              Icons.account_box_sharp,
              color: Colors.white,
            ),
          ),
          Positioned(
              left: 380,
              top: 20,
              child: Icon(
                size: 35,
                Icons.notification_add,
                color: Colors.white,
              )),
          Positioned(
              left: 30,
              top: 100,
              child: Text(
                "Hi, Shahzeb",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              )),
          Positioned(
              left: 30,
              top: 150,
              child: Text(
                "Welcome to Quick Medical Store",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, letterSpacing: 1),
              )),
          Positioned(
            width: 400,
            bottom: -20,
            left: 50,
            child: TextField(
                decoration: InputDecoration(
              filled: true, //<-- SEE HERE
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              // fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              hintText: 'Search Medicine & Healtcare products',
              // ),
            )),
          ),
        ],
      ),
    );
  }
}
