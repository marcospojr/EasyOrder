import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RestaurantAppBar extends StatelessWidget {
  const RestaurantAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/imgs/cat1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
