import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet3/widgets/quick_pay_icons_utils.dart';

class HomepageQuickPay extends StatelessWidget {
  const HomepageQuickPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Quick Pay :",
            style: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.w800),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: QuickPayIconsUtils(
                iconName: "Send Money",
                iconPath: "lib/assets/icons/money.png",
              ),
            ),
            Expanded(
              child: QuickPayIconsUtils(
                iconName: "Statement",
                iconPath: "lib/assets/icons/statement.png",
              ),
            ),
            Expanded(
              child: QuickPayIconsUtils(
                iconName: "Load Wallet",
                iconPath: "lib/assets/icons/wallet.png",
              ),
            ),
            Expanded(
              child: QuickPayIconsUtils(
                  iconName: "Balance Trend",
                  iconPath: "lib/assets/icons/chart.png"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            QuickPayIconsUtils(
              iconName: "Credit Cards",
              iconPath: "lib/assets/icons/creditcard.png",
            ),
            QuickPayIconsUtils(
              iconName: "Insurance",
              iconPath: "lib/assets/icons/insurance.png",
            ),
            QuickPayIconsUtils(
                iconName: "Medical Bills",
                iconPath: "lib/assets/icons/medical.png"),
            QuickPayIconsUtils(
                iconName: "Mobile Topup",
                iconPath: "lib/assets/icons/topup.png"),
          ],
        ),
      ],
    );
  }
}
