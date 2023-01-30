import 'package:easy_order/services/remote_service.dart';
import 'package:flutter/material.dart';

class MenuCategoryItem extends StatelessWidget {
  const MenuCategoryItem({
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

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  final String id, image, title, description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.network(image),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.black54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        description,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          RemoteService().addProduct(id);
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.red,
                        ),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.red),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            primary: Colors.red),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "R\$ $price",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF22A45D),
                      ),
                    ),
                    const Spacer(),
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
