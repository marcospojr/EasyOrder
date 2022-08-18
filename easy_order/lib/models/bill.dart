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
        price: 30.0,
        title: "Duplão",
      ),
      Bill(
        price: 30.0,
        title: "Duplão",
      ),
      Bill(
        price: 8.5,
        title: "Dim SUm",
      ),
      Bill(
        price: 12.4,
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryBill(
    category: "Beef & Lamb",
    items: [
      Bill(
        price: 7.4,
        title: "Combo Burger",
      ),
      Bill(
        price: 9.0,
        title: "Combo Sandwich",
      ),
      Bill(
        price: 8.5,
        title: "Dim SUm",
      ),
      Bill(
        price: 12.4,
        title: "Oyster Dish",
      ),
    ],
  ),
  CategoryBill(
    category: "Seafood",
    items: [
      Bill(
        price: 7.4,
        title: "Oyster Dish",
      ),
      Bill(
        price: 9.0,
        title: "Oyster On Ice",
      ),
      Bill(
        price: 8.5,
        title: "Fried Rice on Pot",
      ),
    ],
  ),
  CategoryBill(
    category: "Appetizers",
    items: [
      Bill(
        price: 8.5,
        title: "Dim SUm",
      ),
      Bill(
        price: 7.4,
        title: "Cookie Sandwich",
      ),
      Bill(
        price: 9.0,
        title: "Combo Sandwich",
      ),
      Bill(
        price: 12.4,
        title: "Cookie Sandwich",
      ),
      Bill(
        price: 9.0,
        title: "Chow Fun",
      ),
    ],
  ),
  CategoryBill(
    category: "Dim Sum",
    items: [
      Bill(
        price: 9.0,
        title: "Combo Sandwich",
      ),
      Bill(
        price: 12.4,
        title: "Cookie Sandwich",
      ),
      Bill(
        price: 8.5,
        title: "Dim SUm",
      ),
      Bill(
        price: 7.4,
        title: "Oyster Dish",
      ),
      Bill(
        price: 9.0,
        title: "Oyster On Ice",
      ),
      Bill(
        price: 8.5,
        title: "Fried Rice on Pot",
      ),
    ],
  ),
];
