import 'package:flutter/material.dart';

class CreateProofOfDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Proof of Delivery'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Delivery ID'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Receiver Name'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Delivery Note'),
            ),
            ElevatedButton(
              onPressed: () {
                // Capture/upload image functionality (e.g., using image picker)
              },
              child: const Text('Upload Image'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save functionality
              },
              child: const Text('Save Proof of Delivery'),
            ),
          ],
        ),
      ),
    );
  }
}
