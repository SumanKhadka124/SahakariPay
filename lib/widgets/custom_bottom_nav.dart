import 'package:flutter/material.dart';
import 'package:wallet3/models/circle_nav_bar.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleNavBar(
        activeIndex: 2,
        activeIcons: const [
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.payments_outlined, color: Colors.deepPurple),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.deepPurple,
            size: 40,
          ),
          Icon(Icons.map_outlined, color: Colors.deepPurple),
          Icon(Icons.list, color: Colors.deepPurple),
        ],

        //
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.payments_outlined, color: Colors.black),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          ),
          Icon(Icons.map_outlined, color: Colors.black),
          Icon(Icons.list, color: Colors.black),
        ],
        color: Colors.grey.shade100,
        height: 100,
        circleWidth: 70,

        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        shadowColor: Colors.black26,
        elevation: 04,
      ),
    );
  }
}
