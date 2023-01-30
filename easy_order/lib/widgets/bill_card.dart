import 'package:flutter/material.dart';

class BillCategoryItem extends StatelessWidget {
  const BillCategoryItem({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  final String title;
  final List items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ...items,
      ],
    );
  }
}

class BillCard extends StatelessWidget {
  const BillCard({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.black54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(title),
                    const Spacer(),
                    Text(
                      "R\$ ${price.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF22A45D),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
