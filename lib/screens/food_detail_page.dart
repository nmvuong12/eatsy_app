import 'package:flutter/material.dart';
import '../models/food.dart';
import '../theme.dart';

class FoodDetailPage extends StatelessWidget {
  final Food item;
  const FoodDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(item.image, height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(item.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Restaurant: ${item.vendor}"),
            Text("Price: \$${item.price}", style: const TextStyle(color: coral, fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text("Quantity"),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle, color: coral)),
                const Text("1", style: TextStyle(fontSize: 18)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle, color: coral)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: FilledButton(onPressed: () {}, child: const Text("Add to Cart"))),
                const SizedBox(width: 12),
                Expanded(child: FilledButton(onPressed: () {}, child: const Text("Order Now"))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
