import 'package:flutter/material.dart';

import '../../screens/detail_screen.dart';
import '../../style/colors.dart';

class CardSummary extends StatelessWidget {
  const CardSummary({
    Key? key,
    required this.context,
    required this.icon,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final BuildContext context;
  final IconData icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Padding(
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
                  Icon(
                    icon,
                    color: KC.primary,
                    size: 30,
                  ),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  Text(
                    desc,
                    style: TextStyle(color: KC.primary, fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
