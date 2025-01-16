import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/proof_of_delivery_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/proof_of_delivery_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ProofOfDeliveryHome extends StatelessWidget {
  const ProofOfDeliveryHome({super.key});

  @override
  Widget build(BuildContext context) {
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
            CustomOutlinedButton(
              icon: Icons.create,
              label: "Create POD",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateProofOfDeliveryPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.search,
              label: "Review POD",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewProofOfDeliveryPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
