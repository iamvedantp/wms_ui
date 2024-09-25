import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_review.dart';
import 'package:flutter/material.dart';

class EBOLHome extends StatelessWidget {
  const EBOLHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
      padding: const EdgeInsets.symmetric(vertical: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('E Bill of Lading'),
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
                  builder: (context) => const CreateEBillOfLadingPage(),
                ),
              );
            },
            label: const Text('Create E Bill of Lading'),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.search, size: 40),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReviewEBillOfLadingPage(),
                ),
              );
            },
            label: const Text('Review E Bill of Lading'),
          ),
        ],
      ),
    );
  }
}
