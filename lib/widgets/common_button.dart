import 'package:flutter/material.dart';

import '../style/colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Container(
          height: 46,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(13)),
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Text(
            "Log Out",
            style: TextStyle(color: KC.primary, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
