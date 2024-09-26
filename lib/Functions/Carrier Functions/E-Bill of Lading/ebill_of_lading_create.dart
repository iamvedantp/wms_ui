import 'package:flutter/material.dart';

class CreateEBillOfLadingPage extends StatelessWidget {
  const CreateEBillOfLadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create E Bill of Lading'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Consignee Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Consignee Address'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Product Details'),
            ),
            // Add more fields as necessary
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save functionality
              },
              child: const Text(
                'Save E Bill of Lading',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
