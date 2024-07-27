import 'package:ecomerce/widget/deat_day_widget.dart';
import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Deal of the Day",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              TextButton(onPressed: () {}, child: Text("More")),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GridView(
              children: [
                DeatDayWidget(),
                DeatDayWidget(), DeatDayWidget(), DeatDayWidget(),
                // Container(
                //   color: Colors.amber,
                // ),
                // Container(
                //   color: Colors.amber,
                // ),
              ],
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 340))
        ],
      ),
    );
  }
}
