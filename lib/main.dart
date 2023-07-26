import 'package:flutter/material.dart';
import 'package:wallet3/homepage.dart';
import 'package:wallet3/widgets/custom_bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homepage(),
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: CustomBottomNav(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.deepPurpleAccent.shade400,
            centerTitle: true,
            title: Row(
              children: [
                Image.asset(
                  "lib/assets/images/sahakaripay.png",
                  // fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(child: Text('Sahakari Pay'))
              ],
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Homepage(),
        ),
      ),
    );
  }
}
