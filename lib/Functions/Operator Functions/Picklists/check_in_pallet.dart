import 'package:flutter/material.dart';

class CheckInPalletPage extends StatelessWidget {
  const CheckInPalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check-In Pallet'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Pallet ID',
                hintText: 'Scan or enter pallet ID',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Number of Pallets',
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
                // Handle Check-In Pallet operation
              },
              child: const Text(
                'Check-In Pallet',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
