import 'package:code_practice/Functions/Operator%20Functions/Picklists/check_in_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Picklists/check_in_pallet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RouteReturnPage extends StatelessWidget {
  const RouteReturnPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const BeveledRectangleBorder());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Return'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.check_box_outlined,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheckInItemPage()),
                );
              },
              label: const Text(
                'Check-In Item',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.account_balance_wallet,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheckInPalletPage()),
                );
              },
              label: const Text(
                'Check-In Pallet',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
