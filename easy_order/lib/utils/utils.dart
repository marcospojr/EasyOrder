import 'package:easy_order/models/category.dart';
import 'package:easy_order/models/subcategory.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: Colors.red,
          name: "Lanches",
          imgName: "cat1.png",
          subCategories: [
            SubCategory(
              color: Colors.red,
              name: "Cerdo",
              imgName: "cat1_1.png",
              icon: "IconFontHelper.MEATS",
            ),
            SubCategory(
              name: "Vaca",
              imgName: "cat1_1.png",
              icon: "IconFontHelper.MEATS",
              color: Colors.red,
            ),
            SubCategory(
              name: "Gallina",
              imgName: "cat1_1.png",
              icon: "IconFontHelper.MEATS",
              color: Colors.red,
            ),
            SubCategory(
              name: "Pavo",
              imgName: "cat1_1.png",
              icon: "IconFontHelper.MEATS",
              color: Colors.red,
            ),
            SubCategory(
              name: "Chivo",
              imgName: "cat1_1.png",
              icon: "IconFontHelper.MEATS",
              color: Colors.red,
            ),
            SubCategory(
              name: "Conejo",
              imgName: "cat1_1.png",
              icon: "IconFontHelper.MEATS",
              color: Colors.red,
            )
          ]),
      Category(
          color: Colors.yellow,
          name: "Frutas",
          imgName: "cat2",
          subCategories: []),
      Category(
          color: Colors.blue,
          name: "Vegetales",
          imgName: "cat3",
          subCategories: []),
      Category(
          color: Colors.green,
          name: "Semillas",
          imgName: "cat4",
          subCategories: []),
      Category(
          color: Colors.purple,
          name: "Dulces",
          imgName: "cat5",
          subCategories: []),
      Category(
          color: Colors.orange,
          name: "Especies",
          imgName: "cat6",
          subCategories: [])
    ];
  }
}
