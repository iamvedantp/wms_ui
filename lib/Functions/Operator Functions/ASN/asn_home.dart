import 'package:code_practice/Functions/Operator%20Functions/ASN/asn_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/ASN/asn_review.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ASNHome extends StatelessWidget {
  const ASNHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the button style once
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
    );

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
            OutlinedButton.icon(
              icon: const FaIcon(
                Icons.add_box_outlined,
                size: 40,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ASNCreatePage(),
                  ),
                );
              },
              label: const Text('Create ASN',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
            OutlinedButton.icon(
              icon: const FaIcon(
                Icons.receipt_outlined,
                size: 40,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ASNReviewPage(),
                  ),
                );
              },
              label: const Text('Review ASN',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
            OutlinedButton.icon(
              icon: const FaIcon(
                Icons.cancel_outlined,
                size: 40,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                // Add cancel functionality or navigation here
              },
              label: const Text('Cancel ASN',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
            OutlinedButton.icon(
              icon: const FaIcon(Icons.history_outlined,
                  size: 40, color: Colors.black),
              style: outlinedButtonStyle,
              onPressed: () {
                // Handle viewing ASN history or other functionalities
              },
              label: const Text('ASN History',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
