import 'package:flutter/material.dart';

class ReplenishmentPage extends StatelessWidget {
  const ReplenishmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    String source = 'Location 1';
    String item = 'Item 1';
    String target = 'Location 2';
    int quantity = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Replenishment'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration:
                  const InputDecoration(labelText: 'Select Source Location'),
              value: source,
              items: <String>['Location 1', 'Location 2', 'Location 3']
                  .map((String loc) {
                return DropdownMenuItem<String>(
                  value: loc,
                  child: Text(loc),
                );
              }).toList(),
              onChanged: (value) {
                source = value!;
              },
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Select Item'),
              value: item,
              items: <String>['Item 1', 'Item 2', 'Item 3'].map((String itm) {
                return DropdownMenuItem<String>(
                  value: itm,
                  child: Text(itm),
                );
              }).toList(),
              onChanged: (value) {
                item = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Target Location'),
              onChanged: (value) {
                target = value;
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
                // Perform replenishment
              },
              child: const Text('Replenish'),
            ),
          ],
        ),
      ),
    );
  }
}
