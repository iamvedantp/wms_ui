import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_pallet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PutawayPage extends StatelessWidget {
  const PutawayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const BeveledRectangleBorder());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Putaways'),
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
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.inventory_2,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PutawayItemPage()),
                );
              },
              label: const Text(
                'Putaway Item',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.local_shipping,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PutawayPalletPage()),
                );
              },
              label: const Text(
                'Putaway Pallet',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
