import 'package:easy_order/models/bill.dart';
import 'package:easy_order/widgets/bill_card.dart';
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
                  List<Bill> items = demoCategoryBills[categoryIndex].items;
                  return BillCategoryItem(
                    title: demoCategoryBills[categoryIndex].category,
                    items: List.generate(
                      items.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: BillCard(
                          title: items[index].title,
                          price: items[index].price,
                        ),
                      ),
                    ),
                  );
                },
                childCount: demoCategoryBills.length,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Flexible(
                flex: 1,
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 18,
                    color: Colors.red,
                  ),
                  label: const Text("Pagar"),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
