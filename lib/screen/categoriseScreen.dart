import 'package:ecomerce/widget/categorycircle.dart';
import 'package:flutter/material.dart';

class CategoriseScreen extends StatelessWidget {
  const CategoriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(221, 237, 234, 234),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "Top Categories",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Categorycircle(
                  img: 'assets/images/pic1.png',
                  categoriesText: 'Dental',
                ),
                Categorycircle(
                  img: 'assets/images/pic2.png',
                  categoriesText: 'Willness',
                ),
                Categorycircle(
                  img: 'assets/images/pic3.png',
                  categoriesText: 'Homeo',
                ),
                Categorycircle(
                  img: 'assets/images/pic4.png',
                  categoriesText: 'Eye Care',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
