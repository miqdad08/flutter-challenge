class Coffee {
  final String name;
  final String image;
  int qty;
  bool isLiked;

  Coffee({
    required this.name,
    required this.image,
    this.qty = 0,
    this.isLiked = false,
  });
}


List<Coffee> coffeeList = [
  Coffee(name: 'Espresso', image: 'https://picsum.photos/seed/coffe1/300/450'),
  Coffee(name: 'Cappuccino', image: 'https://picsum.photos/seed/coffe2/300/450'),
  Coffee(name: 'Latte', image: 'https://picsum.photos/seed/coffe3/300/450'),
  Coffee(name: 'Americano', image: 'https://picsum.photos/seed/coffe4/300/450'),
];