import 'package:flutter/material.dart';
import 'package:wallet3/widgets/account_details_card_utils.dart';

class HomepageAccountDetailsCard extends StatefulWidget {
  const HomepageAccountDetailsCard({Key? key}) : super(key: key);

  @override
  State<HomepageAccountDetailsCard> createState() =>
      _HomepageAccountDetailsCardState();
}

class _HomepageAccountDetailsCardState
    extends State<HomepageAccountDetailsCard> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        controller: _controller,
        children: [
          AccountDetailsCardUtils(
            typeOfAccount: "Savings General",
            accountStatus: "Active",
            accountNumber: "**** 994",
            accountName: "Ram Gurung",
            accountBalance: "NPR 24,250.28",
            accountInterest: "Rs 149.24",
            cardColor: Colors.blue.shade500,
            textColor: Colors.white,
          ),
          AccountDetailsCardUtils(
            typeOfAccount: "USD Account",
            accountStatus: "Active",
            accountNumber: "**** 8822",
            accountName: "Ram Gurung",
            accountBalance: "USD 2,140.98",
            accountInterest: "USD 08.12",
            cardColor: Colors.green.shade500,
            textColor: Colors.white,
          ),
          AccountDetailsCardUtils(
            typeOfAccount: "Current Account",
            accountStatus: "Active",
            accountNumber: "**** 9714",
            accountName: "Ram Gurung",
            accountBalance: "NRP 12,14,250",
            accountInterest: "Rs 1220.00",
            cardColor: Colors.deepPurpleAccent.shade400,
            textColor: Colors.white,
          ),
          // HomepageAccountDetailsCard(),
        ],
      ),
    );
  }
}
