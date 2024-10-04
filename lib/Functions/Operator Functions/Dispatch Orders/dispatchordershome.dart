import 'package:code_practice/Functions/Operator%20Functions/Dispatch%20Orders/dispatch_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/Dispatch%20Orders/dispatch_review_page.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class DispatchOrdersHome extends StatelessWidget {
  const DispatchOrdersHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispatch Orders'),
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
              icon: Icons.add_circle_outline,
              label: "Create Dispatch",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DispatchCreatePage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.search_outlined,
              label: "Review Dispatches",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DispatchReviewPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.cancel_outlined,
              label: "Cancel Dispatch",
              onPressed: () {
                // Add cancel functionality or navigation here
              },
            ),
            CustomOutlinedButton(
              icon: Icons.history_outlined,
              label: "Dispatch History",
              onPressed: () {
                // Handle viewing dispatch history or other functionalities
              },
            ),
          ],
        ),
      ),
    );
  }
}
