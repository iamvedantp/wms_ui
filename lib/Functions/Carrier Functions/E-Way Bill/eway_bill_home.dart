import 'package:code_practice/Functions/Carrier%20Functions/E-Way%20Bill/eway_bill_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Way%20Bill/eway_bill_review.dart';
import 'package:flutter/material.dart';

class EWayBillHome extends StatelessWidget {
  const EWayBillHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Way Bill'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            OutlinedButton.icon(
              icon: const Icon(Icons.create, size: 40),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateEWayBillPage(),
                  ),
                );
              },
              label: const Text('Create E-Way Bill'),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.search, size: 40),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewEWayBillPage(),
                  ),
                );
              },
              label: const Text('Review E-Way Bill'),
            ),
          ],
        ),
      ),
    );
  }
}
