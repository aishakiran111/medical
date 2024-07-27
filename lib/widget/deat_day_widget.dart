import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeatDayWidget extends StatelessWidget {
  const DeatDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 216, 198, 198),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/bottle.png",
                height: 150,
              )),
          Text("Accu-check Active"),
          Text("Test Strip"),
          Container(
            width: double.infinity,
            height: 100,
            child: Stack(
              children: [
                Text(
                  "Rs.112",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Positioned(
                    left: 160,
                    top: 20,
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      width: 50,
                      height: 30,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                          color: Colors.amber),
                      child: Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
