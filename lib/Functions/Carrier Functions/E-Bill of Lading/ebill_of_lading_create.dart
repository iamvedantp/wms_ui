import 'package:flutter/material.dart';

class CreateEBillOfLadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create E Bill of Lading'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Consignee Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Consignee Address'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Details'),
            ),
            // Add more fields as necessary
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save functionality
              },
              child: const Text('Save E Bill of Lading'),
            ),
          ],
        ),
      ),
    );
  }
}
