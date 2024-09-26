import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/proof_of_delivery_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/proof_of_delivery_review.dart';
import 'package:flutter/material.dart';

class ProofOfDeliveryHome extends StatelessWidget {
  const ProofOfDeliveryHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Proof of Delivery'),
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
              icon: const Icon(
                Icons.create,
                size: 40,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateProofOfDeliveryPage(),
                  ),
                );
              },
              label: const Text(
                'Create POD',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(
                Icons.search,
                size: 40,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewProofOfDeliveryPage(),
                  ),
                );
              },
              label: const Text(
                'Review POD',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
