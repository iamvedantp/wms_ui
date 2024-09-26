import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_review.dart';
import 'package:flutter/material.dart';

class EBOLHome extends StatelessWidget {
  const EBOLHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Bill of Lading'),
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
                    builder: (context) => const CreateEBillOfLadingPage(),
                  ),
                );
              },
              label: const Text(
                'Create E-Bill of Lading',
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
                    builder: (context) => const ReviewEBillOfLadingPage(),
                  ),
                );
              },
              label: const Text(
                'Review E-Bill of Lading',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
