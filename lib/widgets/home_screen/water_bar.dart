import 'package:flutter/material.dart';
import 'package:weltra_app/constants.dart';

class WaterBar extends StatefulWidget {
  const WaterBar({super.key});

  @override
  State<WaterBar> createState() => _WaterBarState();
}

class _WaterBarState extends State<WaterBar> {
  int wVal = 0;
  int wMin = 0;
  int wMax = 8;
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
            activeTrackColor: Colors.blue[800],
            inactiveTrackColor: Colors.blue,
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
                value: wVal.toDouble(),
                min: wMin.toDouble(),
                max: wMax.toDouble(),
                onChanged: ((value) => setState(
                      () {
                        wVal = value.toInt();
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
                      wVal.toString(),
                      style: barCurrentNumberStyle,
                    ),
                    Text(
                      "out of $wMax glasses of water consumed today",
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
