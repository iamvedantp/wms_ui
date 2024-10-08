import 'package:flutter/material.dart';

class DispatchReviewPage extends StatefulWidget {
  const DispatchReviewPage({super.key});

  @override
  DispatchReviewPageState createState() => DispatchReviewPageState();
}

class DispatchReviewPageState extends State<DispatchReviewPage> {
  // Changed _dispatches to dispatches (public)
  final List<Map<String, String>> dispatches = [
    {
      "id": "DSP001",
      "destination": "Store A",
      "status": "Dispatched",
    },
    {
      "id": "DSP002",
      "destination": "Store B",
      "status": "Pending",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Review Dispatch Orders'),
      ),
      body: ListView.builder(
        itemCount: dispatches.length,
        itemBuilder: (context, index) {
          final dispatch = dispatches[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text('Dispatch ID: ${dispatch["id"]}'),
              subtitle: Text(
                  'Destination: ${dispatch["destination"]}\nStatus: ${dispatch["status"]}'),
              trailing: IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () {
                  _showDispatchDetailsDialog(dispatch);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _showDispatchDetailsDialog(Map<String, String> dispatch) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dispatch ID: ${dispatch["id"]}'),
          content: Text(
              'Destination: ${dispatch["destination"]}\nStatus: ${dispatch["status"]}'),
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
