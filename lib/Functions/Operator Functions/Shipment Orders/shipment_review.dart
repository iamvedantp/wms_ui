import 'package:flutter/material.dart';

class ShipmentReviewPage extends StatefulWidget {
  @override
  _ShipmentReviewPageState createState() => _ShipmentReviewPageState();
}

class _ShipmentReviewPageState extends State<ShipmentReviewPage> {
  final List<Map<String, String>> _shipments = [
    {
      "id": "SHP001",
      "destination": "Warehouse A",
      "status": "In Transit",
    },
    {
      "id": "SHP002",
      "destination": "Warehouse B",
      "status": "Delivered",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Shipments'),
      ),
      body: ListView.builder(
        itemCount: _shipments.length,
        itemBuilder: (context, index) {
          final shipment = _shipments[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text('Shipment ID: ${shipment["id"]}'),
              subtitle: Text(
                  'Destination: ${shipment["destination"]}\nStatus: ${shipment["status"]}'),
              trailing: IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () {
                  // Show shipment details in a dialog or navigate to another page
                  _showShipmentDetailsDialog(shipment);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _showShipmentDetailsDialog(Map<String, String> shipment) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Shipment ID: ${shipment["id"]}'),
          content: Text(
              'Destination: ${shipment["destination"]}\nStatus: ${shipment["status"]}'),
          actions: [
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
