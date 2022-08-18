// For demo

class Bill {
  final String title;
  final double price;

  Bill({required this.title, required this.price});
}

class CategoryBill {
  final String category;
  final List<Bill> items;

  CategoryBill({required this.category, required this.items});
}

final List<CategoryBill> demoCategoryBills = [
  CategoryBill(
    category: "Pedido 1 - Entregue",
    items: [
      Bill(
        price: 30.00,
        title: "Duplão",
      ),
      Bill(
        price: 30.00,
        title: "Duplão",
      ),
    ],
  ),
  CategoryBill(
    category: "Pedido 2 - Em preparação",
    items: [
      Bill(
        price: 35.00,
        title: "Combo Burger",
      ),
    ],
  ),
];
