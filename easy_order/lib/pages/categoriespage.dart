import 'package:easy_order/models/category.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../main.dart';

class CategoriesPage extends StatelessWidget {
  Category category;

  CategoriesPage({required this.category});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar do Tião"),
        backgroundColor: Colors.red,
        leading: const OptionsButton(),
        actions: const <Widget>[OrderButton()],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: <Widget>[
                  Image.asset('assets/imgs/${category.imgName}',
                      fit: BoxFit.cover),
                  Center(
                      child: Text(category.name ?? "",
                          style:
                              TextStyle(color: category.color, fontSize: 20))),
                ])
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
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
                        child: Row(
                      children: [
                        Image.asset(
                            'assets/imgs/${category.subCategories![index].imgName}',
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100),
                        Text(
                            category.subCategories?[index].name ??
                                "defaultName",
                            style: TextStyle(color: category.color))
                      ],
                    )),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
