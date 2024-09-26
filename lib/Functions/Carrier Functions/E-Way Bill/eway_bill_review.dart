import 'package:flutter/material.dart';

class ReviewEWayBillPage extends StatelessWidget {
  const ReviewEWayBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review E-Way Bill'),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with dynamic data
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('E-Way Bill #$index'),
            subtitle: Text('Consignee $index'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Handle navigation to detailed view
            },
          );
        },
      ),
    );
  }
}
