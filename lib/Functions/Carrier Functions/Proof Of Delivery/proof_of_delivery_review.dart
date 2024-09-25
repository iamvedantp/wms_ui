import 'package:flutter/material.dart';

class ReviewProofOfDeliveryPage extends StatelessWidget {
  const ReviewProofOfDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Proof of Delivery'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with dynamic data
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('POD #$index'),
            subtitle: Text('Receiver Name $index'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Handle navigation to detailed POD view
            },
          );
        },
      ),
    );
  }
}
