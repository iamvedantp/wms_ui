import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_pallet.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PutawayPage extends StatelessWidget {
  const PutawayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Putaways'),
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
              icon: Icons.inventory_2,
              label: "Putaway Item",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PutawayItemPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.local_shipping,
              label: "Putaway Pallet",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PutawayPalletPage(),
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
