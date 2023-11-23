import 'package:flutter/material.dart';

class FoodsConsumedLabel extends StatelessWidget {
  const FoodsConsumedLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Foods Consumed",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
