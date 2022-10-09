import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:openbank/style/colors.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KC.black2,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CreditCardWidget(
                expiryDate: "",
                cardHolderName: "Ozan Deniz",
                onCreditCardWidgetChange: (a) {},
                cvvCode: "264",
                showBackView: true,
                cardNumber: "1234 1234 1234 1234",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
