import 'package:flutter/material.dart';
import 'package:wallet3/models/circle_nav_bar.dart';
import 'package:wallet3/models/homepage_account_details_card.dart';
import 'package:wallet3/models/homepage_quick_pay.dart';
import 'package:wallet3/models/homepage_top_bar.dart';
import 'package:wallet3/models/recent_transactions.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(
            Icons.home,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.account_circle,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.deepPurple,
            size: 40,
          ),
          Icon(
            Icons.more_horiz_outlined,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.list,
            color: Colors.deepPurple,
          ),
        ],
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.black),
          Icon(Icons.account_circle, color: Colors.black),
          Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          ),
          Icon(Icons.more_horiz_rounded, color: Colors.black),
          Icon(Icons.list, color: Colors.black),
        ],
        color: Colors.white,
        height: 100,
        circleWidth: 70,

        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        shadowColor: Colors.black26,
        elevation: 4, // Corrected the elevation value.
        activeIndex: 2,
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                // Top Bar
                HomepageTopBar(),
                SizedBox(height: 30),
                HomepageAccountDetailsCard(),
                SizedBox(height: 30),
                RecentTransactions(),
                SizedBox(height: 30),
                HomepageQuickPay(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
