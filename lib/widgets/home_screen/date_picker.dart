import 'package:flutter/material.dart';
import 'package:weltra_app/constants.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.arrow_left,
              size: 36,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: screenHeight(context) / 9.3,
              width: screenWidth(context) / 5.8,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Thurs",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "29",
                    style: TextStyle(fontSize: 36),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_right,
              size: 36,
            ),
          ],
        ),
      ),
    );
  }
}
