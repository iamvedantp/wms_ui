import 'package:code_practice/Functions/Operator%20Functions/Consignments/replenishment.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/reverse_replenishment.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/transfer_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/transfer_pallet.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class TransferButtonPage extends StatelessWidget {
  const TransferButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            CustomOutlinedButton(
              icon: Icons.transfer_within_a_station,
              label: "Transfer Item",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransferItemPage()),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.pallet,
              label: "Transfer Pallet",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransferPalletPage()),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.local_shipping,
              label: "Replenishment",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReplenishmentPage()),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.camera_enhance,
              label: "Reverse Replenishment",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReverseReplenishmentPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
