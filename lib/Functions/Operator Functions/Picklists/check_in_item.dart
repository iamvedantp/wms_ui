import 'package:flutter/material.dart';

class CheckInItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-In Item'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Item Code',
                hintText: 'Scan or enter item code',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Quantity',
                hintText: 'Enter quantity',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(),
              ),
              items: [
                DropdownMenuItem(value: "Location1", child: Text('Location 1')),
                DropdownMenuItem(value: "Location2", child: Text('Location 2')),
                // Add more locations
              ],
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Check-In operation
              },
              child: Text('Check-In'),
            ),
          ],
        ),
      ),
    );
  }
}
