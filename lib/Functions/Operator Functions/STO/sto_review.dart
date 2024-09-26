import 'package:flutter/material.dart';

class ReviewStockTransferPage extends StatelessWidget {
  final List<Map<String, String>> transfers = [
    {'id': '123', 'item': 'Item A', 'status': 'In Transit'},
    {'id': '124', 'item': 'Item B', 'status': 'Completed'},
  ];

  ReviewStockTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Transfers'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: transfers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item: ${transfers[index]['item']}'),
            subtitle: Text('Status: ${transfers[index]['status']}'),
            onTap: () {
              // Handle details view or status update
            },
          );
        },
      ),
    );
  }
}
