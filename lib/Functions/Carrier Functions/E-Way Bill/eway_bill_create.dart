import 'package:flutter/material.dart';

class CreateEWayBillPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create E-Way Bill'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Consignor Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Consignee Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Transport Details'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Information'),
            ),
            // Add more fields as required
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save functionality
              },
              child: const Text('Save E-Way Bill'),
            ),
          ],
        ),
      ),
    );
  }
}
