import 'package:code_practice/Buttons/check_in_button_page.dart';
import 'package:code_practice/Buttons/route_return_page.dart';
import 'package:code_practice/Buttons/transfer_button_page.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.count(
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.inventory_outlined),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Item Receipt'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.warehouse),
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
              icon: const Icon(Icons.forklift),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Pick Order')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.receipt),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Cycle Count')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.content_paste_go_outlined),
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
              icon: const Icon(Icons.add_shopping_cart),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Products')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.emoji_transportation),
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
