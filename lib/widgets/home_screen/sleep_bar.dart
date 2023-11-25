import 'package:flutter/material.dart';
import 'package:weltra_app/constants.dart';

class SleepBar extends StatefulWidget {
  const SleepBar({super.key});

  @override
  State<SleepBar> createState() => _SleepBarState();
}

class _SleepBarState extends State<SleepBar> {
  int sVal = 0;
  int sMin = 0;
  int sMax = 8;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SliderTheme(
          data: SliderThemeData(
            trackHeight: screenWidth(context) / 2.2,
            trackShape: const RectangularSliderTrackShape(),
            thumbShape: SliderComponentShape.noThumb,
            overlayShape: SliderComponentShape.noOverlay,
            activeTrackColor: Colors.grey[800],
            inactiveTrackColor: Colors.grey[600],
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              width: screenHeight(context) / 3.2,
              child: Slider(
                value: sVal.toDouble(),
                min: sMin.toDouble(),
                max: sMax.toDouble(),
                onChanged: ((value) => setState(
                      () {
                        sVal = value.toInt();
                      },
                    )),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            width: screenWidth(context) / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IgnorePointer(
                ignoring: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sVal.toString(),
                      style: barCurrentNumberStyle,
                    ),
                    Text(
                      "out of $sMax hours of sleep achieved today",
                      style: barGoalDescriptionStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
