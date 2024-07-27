import 'package:flutter/material.dart';

class Categorycircle extends StatelessWidget {
  const Categorycircle(
      {super.key, required this.img, required this.categoriesText});
  final String img;
  final String categoriesText;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(top: 10),
        height: 170,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(70),
            )),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                height: 90,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(categoriesText)
          ],
        ));
  }
}
