import 'package:easy_order/main.dart';
import 'package:easy_order/models/category.dart';
import 'package:easy_order/models/menu.dart';
import 'package:easy_order/widgets/menu_card.dart';
import 'package:easy_order/widgets/restaurant_appbar.dart';
import 'package:easy_order/widgets/restaurant_categories.dart';
import 'package:flutter/material.dart';

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
      body: CustomScrollView(
        slivers: [
          RestaurantAppBar(),
          SliverToBoxAdapter(
            child: Categories(
              onChanged: (value) {},
              selectedIndex: 0,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, categoryIndex) {
                  List<Menu> items = demoCategoryMenus[categoryIndex].items;
                  return MenuCategoryItem(
                    title: demoCategoryMenus[categoryIndex].category,
                    items: List.generate(
                      items.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: MenuCard(
                          title: items[index].title,
                          image: items[index].image,
                          price: items[index].price,
                        ),
                      ),
                    ),
                  );
                },
                childCount: demoCategoryMenus.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
