import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_pallet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:code_practice/Functions/Scanner/scanner.dart';

class PutawayPage extends StatelessWidget {
  const PutawayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const LinearBorder());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Putaways'),
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scanner()),
              );
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.inventory_2, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PutawayItemPage()),
              );
            },
            label: const Text('Putaway Item'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.local_shipping, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PutawayPalletPage()),
              );
            },
            label: const Text('Putaway Pallet'),
          ),
        ],
      ),
    );
  }
}
