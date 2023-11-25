import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IntakeCard extends StatefulWidget {
  BoxConstraints constraints;
  String cardTitle;
  String cardLogo;
  int intakeAmount;
  String intakeMeasurement;
  IntakeCard({
    super.key,
    required this.constraints,
    required this.cardTitle,
    required this.cardLogo,
    required this.intakeAmount,
    required this.intakeMeasurement,
  });

  @override
  State<IntakeCard> createState() => _IntakeCardState();
}

class _IntakeCardState extends State<IntakeCard> {
  late BoxConstraints constraints;
  late String cardTitle;
  late String cardLogo;
  late int intakeAmount;
  late String intakeMeasurement;
  @override
  void initState() {
    constraints = widget.constraints;
    cardTitle = widget.cardTitle;
    cardLogo = widget.cardLogo;
    intakeAmount = widget.intakeAmount;
    intakeMeasurement = widget.intakeMeasurement;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth / 2.15,
      height: constraints.maxHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
                Image.asset(
                  cardLogo,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  intakeAmount.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  intakeMeasurement,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
