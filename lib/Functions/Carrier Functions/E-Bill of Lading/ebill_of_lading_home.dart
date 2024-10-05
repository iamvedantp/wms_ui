import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class EBOLHome extends StatelessWidget {
  const EBOLHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Bill of Lading'),
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
              label: "Create E-Bill Of Lading",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateEBillOfLadingPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.search,
              label: "Review E-Bill Of Lading",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewEBillOfLadingPage(),
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
