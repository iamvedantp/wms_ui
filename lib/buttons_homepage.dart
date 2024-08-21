import 'package:code_practice/Buttons/check_in_button_page.dart';
import 'package:code_practice/Buttons/route_return_page.dart';
import 'package:code_practice/Buttons/transfer_button_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsHomepage extends StatelessWidget {
  const ButtonsHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    //Defined the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const LinearBorder());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: GridView.count(
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(
              Icons.inventory_outlined,
              size: 50,
            ),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Item Receipt'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.warehouse, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckInButtonPage(),
                ),
              );
            },
            label: const Text('Check In'),
          ),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.forklift, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Pick Order')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.construction_rounded, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Cycle Count')),
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
              label: const Text('Transfer')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(Icons.add_shopping_cart, size: 50),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Products')),
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
              label: const Text('Route Return')),
        ],
      ),
    );
  }
}
