import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';

Widget card(Function onTab) {
  return GestureDetector(
    onTap: () {
      onTab();
    },
    child: CreditCardWidget(
      height: 180,
      width: 330,
      expiryDate: "",
      cardHolderName: "Ozan Deniz",
      onCreditCardWidgetChange: (a) {},
      cvvCode: "264",
      showBackView: false,
      cardNumber: "1234 1234 1234 1234",
      glassmorphismConfig: Glassmorphism.defaultConfig(),
    ),
  );
}

      // Container(
                //   color: KC.white3,
                //   height: 220,
                //   width: MediaQuery.of(context).size.width,
                //   child: ListView.builder(
                //     itemCount: 3,
                //     itemBuilder: (context, index) {
                //       return card(() {});
                //     },
                //     scrollDirection: Axis.horizontal,
                //   ),
                // ),