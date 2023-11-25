import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodsConsumedIntakeCard extends StatefulWidget {
  double amount;
  String nutrientSymbol;
  FoodsConsumedIntakeCard({
    super.key,
    required this.amount,
    required this.nutrientSymbol,
  });

  @override
  State<FoodsConsumedIntakeCard> createState() =>
      _FoodsConsumedIntakeCardState();
}

class _FoodsConsumedIntakeCardState extends State<FoodsConsumedIntakeCard> {
  late double amount;
  late String nutrientSymbol;

  @override
  void initState() {
    amount = widget.amount;
    nutrientSymbol = widget.nutrientSymbol;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  amount.toStringAsFixed(0),
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  nutrientSymbol,
                  height: 15,
                  width: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
