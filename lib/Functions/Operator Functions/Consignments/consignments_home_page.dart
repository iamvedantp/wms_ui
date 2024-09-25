import 'package:code_practice/Functions/Operator%20Functions/Consignments/replenishment.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/reverse_replenishment.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/transfer_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/transfer_pallet.dart';
import 'package:code_practice/Functions/Scanner/scanner.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferButtonPage extends StatelessWidget {
  const TransferButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Defined the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const LinearBorder());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Type'),
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
            icon: const FaIcon(
              FontAwesomeIcons.a,
              size: 50,
            ),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferItemPage()),
              );
            },
            label: const Text('Transfer Item'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.pallet, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferPalletPage()),
              );
            },
            label: const Text('Transfer Pallet'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.local_shipping, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReplenishmentPage()),
              );
            },
            label: const Text('Replenishment'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.camera_enhance, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReverseReplenishmentPage()),
              );
            },
            label: const Text('Reverse Replenishment'),
          ),
        ],
      ),
    );
  }
}
