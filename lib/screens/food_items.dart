import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FoodItems extends StatefulWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  State<FoodItems> createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Food Items',
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 3,
          children: [
            itemFood('Awesome Food 1', 'assets/images/food1.jpg'),
            itemFood('Awesome Food 2', 'assets/images/food2.jpg'),
            itemFood('Awesome Food 3', 'assets/images/food3.jpg'),
            itemFood('Awesome Food 4', 'assets/images/food4.jpg'),
            itemFood('Awesome Food 1', 'assets/images/food1.jpg'),
            itemFood('Awesome Food 2', 'assets/images/food2.jpg'),
            itemFood('Awesome Food 3', 'assets/images/food3.jpg'),
            itemFood('Awesome Food 4', 'assets/images/food4.jpg'),
            itemFood('Awesome Food 1', 'assets/images/food1.jpg'),
            itemFood('Awesome Food 2', 'assets/images/food2.jpg'),
            itemFood('Awesome Food 3', 'assets/images/food3.jpg'),
            itemFood('Awesome Food 4', 'assets/images/food4.jpg'),
          ],
        ),
      ),
    );
  }

  itemFood(String title, String img) => Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(img, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            Text(title, style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      );
}
