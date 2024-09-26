import 'package:flutter/material.dart';

class CreateStockTransferPage extends StatelessWidget {
  final TextEditingController itemController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Stock Transfer',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: itemController,
              decoration: const InputDecoration(labelText: 'Item ID'),
            ),
            TextField(
              controller: quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: destinationController,
              decoration: const InputDecoration(labelText: 'Destination'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement transfer creation logic
              },
              child: const Text('Create Transfer',
                  style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
