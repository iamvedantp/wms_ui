import 'package:flutter/material.dart';

class ReviewEBillOfLadingPage extends StatelessWidget {
  const ReviewEBillOfLadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review E Bill of Lading'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with dynamic count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('E Bill of Lading #$index'),
            subtitle: Text('Consignee Name $index'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Handle navigation to details page
            },
          );
        },
      ),
    );
  }
}
