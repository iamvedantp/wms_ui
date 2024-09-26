import 'package:flutter/material.dart';

class ASNReviewPage extends StatelessWidget {
  const ASNReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review ASN'),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 5, // Placeholder for ASN records count
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.description, color: Colors.grey),
              title: Text('ASN Number #${index + 1}'),
              subtitle: Text('Supplier: Supplier Name ${index + 1}'),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Implement review details navigation
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
