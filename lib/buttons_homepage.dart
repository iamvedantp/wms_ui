import 'package:code_practice/Buttons/check_in_button_page.dart';
import 'package:code_practice/Buttons/route_return_page.dart';
import 'package:code_practice/Buttons/transfer_button_page.dart';
import 'package:code_practice/putaway_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsHomepage extends StatelessWidget {
  const ButtonsHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const BeveledRectangleBorder());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back button
        title: const Text('Welcome Operator'),
        backgroundColor: Colors.orangeAccent,
        actions: [
          DropdownButton(
            value: "Operator",
            items: const [
              DropdownMenuItem(
                value: "Operator",
                child: Text('Operator'),
              ),
              DropdownMenuItem(
                value: "Carrier",
                child: Text('Carrier'),
              ),
            ],
            onChanged: (value) {
              if (value == "Operator") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ButtonsHomepage(),
                  ),
                );
              } else if (value == "Carrier") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckInButtonPage(),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.inventory_outlined, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Stock Transfer Orders'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.warehouse, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Shipment Orders'),
          ),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.forklift, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Dispatch Orders')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.construction_rounded, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('ASN')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.content_paste_go_outlined, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransferButtonPage(),
                  ),
                );
              },
              label: const Text('Consignments')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.add_shopping_cart, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Goods Receipt Notes')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.emoji_transportation, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RouteReturnPage(),
                  ),
                );
              },
              label: const Text('Picklists ')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.emoji_transportation, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PutawayPage(),
                  ),
                );
              },
              label: const Text('Putaways ')),
        ],
      ),
    );
  }
}
