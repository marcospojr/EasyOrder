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
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Total: ", style: TextStyle(fontSize: 18)),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "R\$ 95,00",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF22A45D),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: OutlinedButton.icon(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Comanda"),
                content: const Text("Comanda paga com sucesso!"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: const Text("OK"))
                ],
              ),
            );
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
    );
  }
}
