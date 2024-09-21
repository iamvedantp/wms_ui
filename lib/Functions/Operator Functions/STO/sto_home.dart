import 'package:code_practice/Functions/Operator%20Functions/STO/sto_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/STO/sto_review.dart';
import 'package:flutter/material.dart';

class StockTransferOrderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Transfer Orders'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateStockTransferPage()),
              );
            },
            child: const Text('Create Transfer'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReviewStockTransferPage()),
              );
            },
            child: const Text('Review Transfers'),
          ),
          ElevatedButton(
            onPressed: () {
              // Add cancel functionality
            },
            child: const Text('Cancel Transfer'),
          ),
        ],
      ),
    );
  }
}
