import 'package:flutter/material.dart';
import 'package:weltra_app/data.dart';
import 'package:weltra_app/widgets/home_screen/foods_consumed/add_foods_consumed_tile.dart';
import 'package:weltra_app/widgets/home_screen/foods_consumed/foods_consumed_grid_tile.dart';

class FoodsConsumedGrid extends StatefulWidget {
  const FoodsConsumedGrid({super.key});

  @override
  State<FoodsConsumedGrid> createState() => _FoodsConsumedGridState();
}

class _FoodsConsumedGridState extends State<FoodsConsumedGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.6,
          crossAxisSpacing: 4,
          mainAxisSpacing: 6,
        ),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const AddFoodsConsumedTile();
          }
          index = index - 1;
          return FoodsConsumedGridTile(
            food: foodList[index],
          );
        },
        itemCount: foodList.length + 1,
      ),
    );
  }
}
