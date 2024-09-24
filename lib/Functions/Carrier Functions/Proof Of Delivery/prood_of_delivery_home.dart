import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/proof_of_delivery_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/proof_of_delivery_review.dart';
import 'package:flutter/material.dart';

class ProofOfDeliveryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
      padding: const EdgeInsets.symmetric(vertical: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Proof of Delivery'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(20),
        children: [
          OutlinedButton.icon(
            icon: const Icon(Icons.create, size: 40),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateProofOfDeliveryPage(),
                ),
              );
            },
            label: const Text('Create POD'),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.search, size: 40),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReviewProofOfDeliveryPage(),
                ),
              );
            },
            label: const Text('Review POD'),
          ),
        ],
      ),
    );
  }
}
