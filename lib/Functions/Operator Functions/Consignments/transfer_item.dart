import 'package:flutter/material.dart';

class TransferItemPage extends StatelessWidget {
  const TransferItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedItem = 'Item 1';
    String sourceLocation = '';
    String destinationLocation = '';
    int quantity = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Item'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Select Item'),
              value: selectedItem,
              items: <String>['Item 1', 'Item 2', 'Item 3'].map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                selectedItem = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Source Location'),
              onChanged: (value) {
                sourceLocation = value;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Destination Location'),
              onChanged: (value) {
                destinationLocation = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                quantity = int.tryParse(value) ?? 1;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform the transfer
              },
              child: const Text('Transfer Item'),
            ),
          ],
        ),
      ),
    );
  }
}
