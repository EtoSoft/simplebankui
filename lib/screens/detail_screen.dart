import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openbank/style/colors.dart';
import 'package:openbank/widgets/cards/account_summary.dart';
import 'package:openbank/widgets/charts/line_chart.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        )),
                    Text(
                      "Burgan Wallet",
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 1, color: KC.primary),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: LineChartSample1(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
                child: Text(
                  "Accounts",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 5),
                child: Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 230,
                child: Center(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      listviewItem(),
                      listviewItem(),
                      listviewItem(),
                      listviewItem(),
                      listviewItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding listviewItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          tileColor: Colors.white,
          title: Text("Ertuğrul Dağlı", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          subtitle: Text("Burgan Bank", style: TextStyle(fontSize: 13)),
          trailing: Text("TRY 144.23", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
          leading: CircleAvatar(
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
