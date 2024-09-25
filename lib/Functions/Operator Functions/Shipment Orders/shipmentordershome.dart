import 'package:code_practice/Functions/Operator%20Functions/Shipment%20Orders/shipment_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/Shipment%20Orders/shipment_review.dart';
import 'package:flutter/material.dart';

class ShipmentOrdersHome extends StatelessWidget {
  const ShipmentOrdersHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipment Orders'),
        backgroundColor: Colors.grey,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: const EdgeInsets.all(20),
        children: [
          OutlinedButton.icon(
            icon: const Icon(Icons.local_shipping, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShipmentCreatePage()),
              );
            },
            label: const Text('Create Shipment'),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.search, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShipmentReviewPage()),
              );
            },
            label: const Text('Review Shipments'),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.cancel, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              // Add functionality for cancel shipment
            },
            label: const Text('Cancel Shipment'),
          ),
        ],
      ),
    );
  }
}
