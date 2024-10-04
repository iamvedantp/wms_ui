import 'package:code_practice/Functions/Operator%20Functions/Picklists/check_in_item.dart';
import 'package:code_practice/Functions/Operator%20Functions/Picklists/check_in_pallet.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class RouteReturnPage extends StatelessWidget {
  const RouteReturnPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            CustomOutlinedButton(
              icon: Icons.check_box_outlined,
              label: "Check-In Item",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckInItemPage(),
                  ),
                );
              },
            ),
            CustomOutlinedButton(
              icon: Icons.account_balance_wallet,
              label: "Check-In Pallet",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckInPalletPage(),
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
