import 'package:easy_order/models/menu.dart';
import 'package:easy_order/widgets/menu_card.dart';
import 'package:easy_order/widgets/restaurant_appbar.dart';
import 'package:flutter/material.dart';

class BillPage extends StatelessWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comanda'),
        backgroundColor: Colors.red,
      ),
      body: CustomScrollView(
        slivers: [
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
