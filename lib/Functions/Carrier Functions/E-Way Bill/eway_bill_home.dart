import 'package:code_practice/Functions/Carrier%20Functions/E-Way%20Bill/eway_bill_create.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Way%20Bill/eway_bill_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class EWayBillHome extends StatelessWidget {
  const EWayBillHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Way Bill'),
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
              label: "Create E-Way Bill",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateEWayBillPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.search,
              label: "Review W-Way Bill",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewEWayBillPage(),
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
