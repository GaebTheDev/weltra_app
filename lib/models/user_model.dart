class UserModel {
  final String? id;
  final String? profilePicture;
  final String? firstName;
  final String? lastName;
  final String? sex;
  final int? age;
  final double? height;
  final double? weight;
  final double? bmi;
  final String? bmiCategory;
  final double? weightGoal;
  final double? targetCalories;
  final double? targetProtein;

  const UserModel(
    this.id,
    this.profilePicture,
    this.firstName,
    this.lastName,
    this.sex,
    this.age,
    this.height,
    this.weight,
    this.bmi,
    this.bmiCategory,
    this.weightGoal,
    this.targetCalories,
    this.targetProtein,
  );
}
