import 'package:code_practice/Functions/Operator%20Functions/Shipment%20Orders/shipment_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/Shipment%20Orders/shipment_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ShipmentOrdersHome extends StatelessWidget {
  const ShipmentOrdersHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipment Orders'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: const EdgeInsets.all(20),
        children: [
          CustomOutlinedButton(
            icon: Icons.local_shipping,
            label: "Create Shipment",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShipmentCreatePage()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.search,
            label: "Review Shipments",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShipmentReviewPage()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.cancel,
            label: "Cancel Shipment",
            onPressed: () {
              // Add functionality for cancel shipment
            },
          ),
        ],
      ),
    );
  }
}
