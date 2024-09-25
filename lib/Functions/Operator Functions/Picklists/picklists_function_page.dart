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
        OutlinedButton.styleFrom(shape: const LinearBorder());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Return'),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.check_box_outlined, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckInItemPage()),
              );
            },
            label: const Text('Check-In Item'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.account_balance_wallet, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckInPalletPage()),
              );
            },
            label: const Text('Check-In Pallet'),
          ),
        ],
      ),
    );
  }
}
