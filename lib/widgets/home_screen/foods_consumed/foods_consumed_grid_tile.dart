import 'package:flutter/material.dart';
import 'package:weltra_app/models/food_model.dart';
import 'package:weltra_app/widgets/home_screen/foods_consumed/foods_consumed_intake_card.dart';

// ignore: must_be_immutable
class FoodsConsumedGridTile extends StatefulWidget {
  FoodModel food;
  FoodsConsumedGridTile({super.key, required this.food});

  @override
  State<FoodsConsumedGridTile> createState() => _FoodsConsumedGridTileState();
}

class _FoodsConsumedGridTileState extends State<FoodsConsumedGridTile> {
  late FoodModel food;
  @override
  void initState() {
    food = widget.food;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        food.foodPhoto!,
                        height: constraints.maxHeight / 2.2,
                        width: constraints.maxWidth / 2.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            food.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${food.amountPerServing!.toStringAsFixed(0)} grams",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FoodsConsumedIntakeCard(
                          amount: food.totalCalories!,
                          nutrientSymbol: "assets/images/fire_64.png"),
                      FoodsConsumedIntakeCard(
                          amount: food.totalProtein!,
                          nutrientSymbol: "assets/images/dna_64.png"),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
