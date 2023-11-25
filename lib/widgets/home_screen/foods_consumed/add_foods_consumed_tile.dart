import 'package:flutter/material.dart';

class AddFoodsConsumedTile extends StatefulWidget {
  const AddFoodsConsumedTile({super.key});

  @override
  State<AddFoodsConsumedTile> createState() => _AddFoodsConsumedTileState();
}

class _AddFoodsConsumedTileState extends State<AddFoodsConsumedTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("add food");
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: UnconstrainedBox(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: 36,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
