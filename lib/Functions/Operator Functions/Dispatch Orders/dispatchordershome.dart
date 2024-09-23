import 'package:code_practice/Functions/Operator%20Functions/Dispatch%20Orders/dispatch_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/Dispatch%20Orders/dispatch_review_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DispatchOrdersHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the button style once
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const BeveledRectangleBorder(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispatch Orders'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            OutlinedButton.icon(
              icon: const FaIcon(Icons.add_circle_outline, size: 40),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DispatchCreatePage(),
                  ),
                );
              },
              label:
                  const Text('Create Dispatch', style: TextStyle(fontSize: 16)),
            ),
            OutlinedButton.icon(
              icon: const FaIcon(Icons.search_outlined, size: 40),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DispatchReviewPage(),
                  ),
                );
              },
              label: const Text('Review Dispatches',
                  style: TextStyle(fontSize: 16)),
            ),
            OutlinedButton.icon(
              icon: const FaIcon(Icons.cancel_outlined, size: 40),
              style: outlinedButtonStyle,
              onPressed: () {
                // Add cancel functionality or navigation here
              },
              label:
                  const Text('Cancel Dispatch', style: TextStyle(fontSize: 16)),
            ),
            OutlinedButton.icon(
              icon: const FaIcon(Icons.history_outlined, size: 40),
              style: outlinedButtonStyle,
              onPressed: () {
                // Handle viewing dispatch history or other functionalities
              },
              label: const Text('Dispatch History',
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
