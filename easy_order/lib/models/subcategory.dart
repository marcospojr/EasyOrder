import 'dart:ui';

import 'category.dart';

class SubCategory extends Category {
  SubCategory(
      {String? name, String? icon, required Color color, String? imgName})
      : super(name: name ?? "", color: color, imgName: imgName ?? "");
}
