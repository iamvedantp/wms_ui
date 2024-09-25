import 'package:flutter/material.dart';

class ReverseReplenishmentPage extends StatelessWidget {
  const ReverseReplenishmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    String target = 'Location 2';
    String item = 'Item 1';
    String source = 'Location 1';
    int quantity = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse Replenishment'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration:
                  const InputDecoration(labelText: 'Select Target Location'),
              value: target,
              items: <String>['Location 2', 'Location 3'].map((String loc) {
                return DropdownMenuItem<String>(
                  value: loc,
                  child: Text(loc),
                );
              }).toList(),
              onChanged: (value) {
                target = value!;
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
              decoration: const InputDecoration(labelText: 'Source Location'),
              onChanged: (value) {
                source = value;
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
                // Perform reverse replenishment
              },
              child: const Text('Reverse Replenishment'),
            ),
          ],
        ),
      ),
    );
  }
}
