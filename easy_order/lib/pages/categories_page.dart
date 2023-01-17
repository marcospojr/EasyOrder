import 'package:easy_order/main.dart';
import 'package:easy_order/models/category.dart';
import 'package:easy_order/services/get_options.dart';
import 'package:easy_order/services/remote_service.dart';
import 'package:easy_order/widgets/menu_card.dart';
import 'package:easy_order/widgets/restaurant_appbar.dart';
import 'package:easy_order/widgets/restaurant_categories.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesPage extends StatefulWidget {
  Category category;

  CategoriesPage({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<DataResult>? options;

  var isLoaded = false;
  // int selectedIndex = 0;
  late ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
    getData();
  }

  getData() async {
    var aux = await RemoteService().getOptions();
    options = aux?.dataResult;

    if (options != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

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
                  List<DataResult>? items = options;
                  return MenuCategoryItem(
                    title: "Lanches",
                    items: List.generate(
                      items?.length ?? 0,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: MenuCard(
                          title: items?[index].name ?? "NAME",
                          image: "assets/imgs/cat1_1.png",
                          price: items?[index].value ?? 0,
                        ),
                      ),
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
