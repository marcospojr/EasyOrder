import 'dart:ui';

class Category {
  String? name;
  Color color;
  String? imgName;
  List<Category>? subCategories;

  Category({this.name, required this.color, this.imgName, this.subCategories});
}
