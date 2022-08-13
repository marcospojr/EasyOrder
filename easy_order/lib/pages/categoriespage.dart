import 'package:easy_order/models/category.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  Category category;

  CategoriesPage({required this.category});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: MainAppBar(),
        body: Container(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CategoryIcon(
            //   color: category.color,
            //   iconName: category.icon
            // ),
            const SizedBox(width: 10),
            Text(category.name ?? "",
                style: TextStyle(color: category.color, fontSize: 20))
          ],
        ),
        SizedBox(height: 30),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children:
                List.generate(category.subCategories?.length ?? 0, (index) {
              return GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context, MaterialPageRoute(
                //       builder: (context) =>
                //       DetailsPage(
                //         subCategory: this.selectedCategory.subCategories[index]
                //     )
                //   ));
                // },
                child: Container(
                    child: Column(
                  children: [
                    // ClipOval(
                    //   child: Image.asset(
                    //       'assets/imgs/' +
                    //           this
                    //               .selectedCategory
                    //               .subCategories[index]
                    //               .imgName +
                    //           '.png',
                    //       fit: BoxFit.cover,
                    //       width: 100,
                    //       height: 100),
                    // ),
                    SizedBox(height: 10),
                    Text(category.subCategories?[index].name ?? "defaultName",
                        style: TextStyle(color: category.color))
                  ],
                )),
              );
            }),
          ),
        )
      ],
    )));
  }
}
