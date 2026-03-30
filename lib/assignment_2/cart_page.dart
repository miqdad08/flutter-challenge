import 'package:flutter/material.dart';

import 'models/coffe.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void increment(Coffee coffee) {
    setState(() {
      coffee.qty++;
    });
  }

  void decrement(Coffee coffee) {
    setState(() {
      if (coffee.qty > 0) coffee.qty--;
    });
  }

  void toggleLike(Coffee coffee) {
    setState(() {
      coffee.isLiked = !coffee.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart Coffee')),
      body: ListView.builder(
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          final coffee = coffeeList[index];

          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(coffee.image),
              title: Text(coffee.name),
              subtitle: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => decrement(coffee),
                  ),
                  Text('${coffee.qty}'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => increment(coffee),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  coffee.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: coffee.isLiked ? Colors.red : null,
                ),
                onPressed: () => toggleLike(coffee),
              ),
            ),
          );
        },
      ),
    );
  }
}