import 'package:code_practice/Functions/Operator%20Functions/Goods%20Receipt%20Notes/grn_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/Goods%20Receipt%20Notes/grn_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class GoodsReceiptNotesHome extends StatelessWidget {
  const GoodsReceiptNotesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goods Receipt Notes'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            CustomOutlinedButton(
              icon: Icons.add,
              label: "Create GRN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GRNCreatePage()),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.list,
              label: "Review GRN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GRNReviewPage()),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.cancel,
              label: "Cancel GRN",
              onPressed: () {
                // Implement Cancel GRN functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
