import 'package:flutter/material.dart';
import 'package:weltra_app/constants.dart';
import 'package:weltra_app/widgets/home_screen/calorie_protein_intake/intake_card.dart';

class CalorieProteinIntake extends StatelessWidget {
  const CalorieProteinIntake({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        width: screenWidth(context) * 0.9,
        height: screenHeight(context) / 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IntakeCard(
                    constraints: constraints,
                    cardTitle: 'Total Calories',
                    cardLogo: 'assets/images/fire_64.png',
                    intakeAmount: 1250,
                    intakeMeasurement: 'cKal',
                  ),
                  IntakeCard(
                    constraints: constraints,
                    cardTitle: 'Total Protein',
                    cardLogo: 'assets/images/dna_64.png',
                    intakeAmount: 26,
                    intakeMeasurement: 'gms',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
