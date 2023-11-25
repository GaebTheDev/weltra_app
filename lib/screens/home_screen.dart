import 'package:flutter/material.dart';
import 'package:weltra_app/widgets/home_screen/calorie_protein_intake/calorie_protein_intake.dart';
import 'package:weltra_app/widgets/home_screen/circle_header_1.dart';
import 'package:weltra_app/widgets/home_screen/date_picker.dart';
import 'package:weltra_app/widgets/home_screen/foods_consumed/foods_consumed_grid.dart';
import 'package:weltra_app/widgets/home_screen/foods_consumed/foods_consumed_label.dart';
import 'package:weltra_app/widgets/home_screen/sleep_bar.dart';
import 'package:weltra_app/widgets/home_screen/user_greeting.dart';
import 'package:weltra_app/widgets/home_screen/water_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              const CircleHeader1(),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: UserGreeting(
                      userFirstName: 'Alex',
                      greetingSubtext: 'Ready for another great day?',
                    ),
                  ),
                  const DatePicker(),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WaterBar(),
              SleepBar(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CalorieProteinIntake(),
          const SizedBox(
            height: 10,
          ),
          const FoodsConsumedLabel(),
          const SizedBox(
            height: 10,
          ),
          const FoodsConsumedGrid(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
