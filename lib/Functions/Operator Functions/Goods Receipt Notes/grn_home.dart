import 'package:code_practice/Functions/Operator%20Functions/Goods%20Receipt%20Notes/grn_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/Goods%20Receipt%20Notes/grn_review.dart';
import 'package:flutter/material.dart';

class GoodsReceiptNotesHome extends StatelessWidget {
  const GoodsReceiptNotesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goods Receipt Notes'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            OutlinedButton.icon(
              icon: const Icon(
                Icons.add,
                size: 50,
                color: Colors.black,
              ),
              style: OutlinedButton.styleFrom(
                shape: const BeveledRectangleBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GRNCreatePage()),
                );
              },
              label: const Text(
                'Create GRN',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(
                Icons.list,
                size: 50,
                color: Colors.black,
              ),
              style: OutlinedButton.styleFrom(
                shape: const BeveledRectangleBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GRNReviewPage()),
                );
              },
              label: const Text(
                'Review GRN',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(
                Icons.cancel,
                size: 50,
                color: Colors.black,
              ),
              style: OutlinedButton.styleFrom(
                shape: const BeveledRectangleBorder(),
              ),
              onPressed: () {
                // Implement Cancel GRN functionality
              },
              label: const Text(
                'Cancel GRN',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
