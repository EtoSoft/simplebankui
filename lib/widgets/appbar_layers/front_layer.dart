import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openbank/style/colors.dart';
import 'package:openbank/widgets/cards/account_summary.dart';
import 'package:openbank/widgets/cards/transaction_item.dart';
import 'package:openbank/widgets/list_item.dart';

class FrontLayer extends StatelessWidget {
  const FrontLayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "My Accounts",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 170,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardSummary(context: context, icon: FontAwesomeIcons.ccMastercard, title: "Your Balance", desc: "TRY 21.342"),
                    CardSummary(context: context, icon: FontAwesomeIcons.ccVisa, title: "Your Balance", desc: "TRY 2.231"),
                    CardSummary(context: context, icon: FontAwesomeIcons.ccStripe, title: "Your Balance", desc: "TRY 14.233"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Transactions",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all transactions",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: KC.primary),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 230,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    transItem(
                        icon: FontAwesomeIcons.ccMastercard,
                        title: "Ertu??rul Da??l??",
                        desc: "TRY 2.231",
                        transaction: Icons.south_east_rounded,
                        traType: "Income",
                        cardType: FontAwesomeIcons.ccMastercard),
                    transItem(
                        icon: FontAwesomeIcons.ccVisa,
                        title: "Ozan Deniz Demirta??",
                        desc: "TRY 1.231",
                        transaction: Icons.south_east_rounded,
                        traType: "Income",
                        cardType: FontAwesomeIcons.ccVisa),
                    transItem(
                        icon: FontAwesomeIcons.ccStripe,
                        title: "Apple",
                        desc: "TRY 3.212",
                        transaction: Icons.south_east_rounded,
                        traType: "Income",
                        cardType: FontAwesomeIcons.ccApplePay),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Text(
                "Recent Transactions",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListViewItem(),
                    ListViewItem(),
                    ListViewItem(),
                    ListViewItem(),
                    ListViewItem(),
                    ListViewItem(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
