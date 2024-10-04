import 'package:code_practice/Functions/Operator%20Functions/ASN/asn_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/ASN/asn_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ASNHome extends StatelessWidget {
  const ASNHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASN (Advanced Shipping Notice)'),
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
              icon: Icons.add_box_outlined,
              label: "Create ASN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ASNCreatePage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.receipt_outlined,
              label: "Review ASN",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ASNReviewPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.cancel_outlined,
              label: "Cancel ASN",
              onPressed: () {
                // Add cancel functionality or navigation here
              },
            ),
            CustomOutlinedButton(
              icon: Icons.history_outlined,
              label: "ASN History",
              onPressed: () {
                // Handle viewing ASN history or other functionalities
              },
            ),
          ],
        ),
      ),
    );
  }
}
