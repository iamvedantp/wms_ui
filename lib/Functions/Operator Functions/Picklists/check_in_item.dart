import 'package:flutter/material.dart';

class CheckInItemPage extends StatelessWidget {
  const CheckInItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check-In Item'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Item Code',
                hintText: 'Scan or enter item code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Quantity',
                hintText: 'Enter quantity',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "Location1", child: Text('Location 1')),
                DropdownMenuItem(value: "Location2", child: Text('Location 2')),
                // Add more locations
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Check-In operation
              },
              child: const Text('Check-In'),
            ),
          ],
        ),
      ),
    );
  }
}
