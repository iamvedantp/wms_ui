import 'package:flutter/material.dart';

class CheckInButtonPage extends StatelessWidget {
  const CheckInButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Defined the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const LinearBorder());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check-in'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.warehouse, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Check-In Item'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.pallet, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Check-In Pallet'),
          )
        ],
      ),
    );
  }
}
