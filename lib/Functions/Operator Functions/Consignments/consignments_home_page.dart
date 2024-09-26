import 'package:code_practice/Functions/Operator%20Functions/Consignments/replenishment.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/reverse_replenishment.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/transfer_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/transfer_pallet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferButtonPage extends StatelessWidget {
  const TransferButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Defined the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const BeveledRectangleBorder());
    return Scaffold(
      appBar: AppBar(
          title: const Text('Transfer Type'), backgroundColor: Colors.blueGrey),
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
                FontAwesomeIcons.a,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransferItemPage()),
                );
              },
              label: const Text(
                'Transfer Item',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.pallet,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransferPalletPage()),
                );
              },
              label: const Text(
                'Transfer Pallet',
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
                      builder: (context) => const ReplenishmentPage()),
                );
              },
              label: const Text(
                'Replenishment',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.camera_enhance,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReverseReplenishmentPage()),
                );
              },
              label: const Text(
                'Reverse Replenishment',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
