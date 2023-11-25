class FoodModel {
  final String? id;
  final String name;
  final String? foodPhoto;
  final double? amountPerServing;
  final double? totalCalories;
  final double? totalProtein;

  const FoodModel({
    this.id,
    required this.name,
    this.foodPhoto,
    this.amountPerServing,
    this.totalCalories,
    this.totalProtein,
  });
}
