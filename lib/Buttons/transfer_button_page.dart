import 'package:flutter/material.dart';

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
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.camera_enhance),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Transfer Item'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.camera_enhance),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Transfer Pallet'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.camera_enhance),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Replenishment'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.camera_enhance),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Reverse Replenishment'),
          ),
        ],
      ),
    );
  }
}
