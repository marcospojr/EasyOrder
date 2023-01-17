import 'package:easy_order/services/get_options.dart';
import 'package:easy_order/services/remote_service.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
    required this.onChanged,
    required this.selectedIndex,
    // require d this.isLoaded,
  }) : super(key: key);

  final ValueChanged<int> onChanged;
  final int selectedIndex;
  // var isLoaded = false;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant Categories oldWidget) {
    _controller.animateTo(
      80.0 * widget.selectedIndex,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 200),
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          1,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextButton(
              onPressed: () {
                widget.onChanged(index);
              },
              style: TextButton.styleFrom(
                  primary: widget.selectedIndex == index
                      ? Colors.black
                      : Colors.black45),
              child: const Text(
                "Lanches",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
