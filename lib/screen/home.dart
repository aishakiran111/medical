import 'package:ecomerce/color.dart';
import 'package:ecomerce/component/container_clipart.dart';
import 'package:ecomerce/screen/categoriseScreen.dart';
import 'package:ecomerce/screen/deal_of_day.dart';

import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            // selectedFontSize: 50,
            selectedItemColor: Colors.blue,
            iconSize: 30,
            onTap: (value) {
              selectedIndex = value;
              //  print(selectedIndex);
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.blue,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.square_sharp,
                    color: Colors.blue,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.swap_vert_circle,
                    color: Colors.blue,
                  ),
                  label: "home"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: "home",
              )
              //   backgroundColor: Colors.black45),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ContainerClipart(),
              Container(
                padding: EdgeInsets.all(30),
                color: Color.fromARGB(221, 237, 234, 234),
                child: Column(
                  children: [
                    CategoriseScreen(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      margin: EdgeInsets.only(top: 30),
                      height: 200,
                      width: double.infinity,
                      child: Image.asset("assets/images/saveextra.png",
                          fit: BoxFit.fill),
                    ),
                    DealOfDay(),
                  ],
                ),
              ),

              // BottomAppBar(
              //   child: Container(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
              //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
              //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
              //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
              //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check))
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}

// Stack(
//   clipBehavior: Clip.none,
//   alignment: Alignment.center,
//   children: [
//     Container(
//       color: const Color.fromRGBO(244, 67, 54, 1),
//       height: 200,
//       width: 200,
//     ),
//     Container(
//       color: Colors.yellow,
//       height: 180,
//       width: 180,
//     ),
//     Container(
//       color: Colors.green,
//       height: 150,
//       width: 150,
//     ),
//     Positioned(
//       right: -20,
//       top: -20,
//       child: CircleAvatar(
//         child: Text("0"),
//       ),
//     ),
//   ],
// )
