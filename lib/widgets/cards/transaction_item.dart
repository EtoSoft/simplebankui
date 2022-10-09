import 'package:flutter/material.dart';

import '../../style/colors.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.icon,
    required this.cardType,
    required this.transaction,
    required this.title,
    required this.desc,
    required this.traType,
  }) : super(key: key);

  final IconData icon;
  final IconData cardType;
  final IconData transaction;
  final String title;
  final String desc;
  final String traType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Container(
          height: 220,
          width: 200,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      traType,
                      style: TextStyle(color: Colors.green[400], fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      transaction,
                      color: Colors.green[400],
                      size: 25,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  desc,
                  style: TextStyle(color: Colors.green[400], fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Received from",
                  style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400, fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "12 feb 2022",
                      style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Icon(
                      cardType,
                      color: KC.primary,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Padding transItem({required IconData icon, required IconData cardType, required IconData transaction, required String title, required String desc, required String traType}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      child: Container(
        height: 220,
        width: 200,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    traType,
                    style: TextStyle(color: Colors.green[400], fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    transaction,
                    color: Colors.green[400],
                    size: 25,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                desc,
                style: TextStyle(color: Colors.green[400], fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "Received from",
                style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400, fontSize: 12),
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12 feb 2022",
                    style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  Icon(
                    cardType,
                    color: KC.primary,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
