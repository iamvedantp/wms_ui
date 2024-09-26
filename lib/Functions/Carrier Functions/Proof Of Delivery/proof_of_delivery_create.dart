import 'package:flutter/material.dart';

class CreateProofOfDeliveryPage extends StatelessWidget {
  const CreateProofOfDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Proof of Delivery'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Delivery ID'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Receiver Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Delivery Note'),
            ),
            ElevatedButton(
              onPressed: () {
                // Capture/upload image functionality (e.g., using image picker)
              },
              child: const Text(
                'Upload Image',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save functionality
              },
              child: const Text(
                'Save Proof of Delivery',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
