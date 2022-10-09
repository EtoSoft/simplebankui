import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openbank/style/colors.dart';

import '../common_button.dart';

class BackLayer extends StatelessWidget {
  const BackLayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  viewItem(icon: FontAwesomeIcons.landmark, title: "My Accounts", desc: "Manage your account for easy transactions"),
                  viewItem(icon: FontAwesomeIcons.commentsDollar, title: "FastPay", desc: "Make your transactions in no-time"),
                  viewItem(icon: FontAwesomeIcons.clockRotateLeft, title: "History", desc: "See last transaction history"),
                  viewItem(icon: FontAwesomeIcons.moneyBillTransfer, title: "Payment", desc: "Send money for all services easily and safely"),
                ],
              ),
            ),
            CommonButton(),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }

  Padding viewItem({required IconData icon, required String title, required String desc}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Container(
          decoration: BoxDecoration(color: KC.primary, borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 26,
                ),
                Spacer(),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  desc,
                  style: TextStyle(color: Colors.grey[300], fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
