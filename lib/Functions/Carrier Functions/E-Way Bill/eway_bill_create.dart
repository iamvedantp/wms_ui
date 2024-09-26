import 'package:flutter/material.dart';

class CreateEWayBillPage extends StatelessWidget {
  const CreateEWayBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create E-Way Bill'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Consignor Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Consignee Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Transport Details'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Product Information'),
            ),
            // Add more fields as required
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save functionality
              },
              child: const Text(
                'Save E-Way Bill',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
