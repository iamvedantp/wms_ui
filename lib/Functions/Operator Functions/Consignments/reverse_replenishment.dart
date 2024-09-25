import 'package:flutter/material.dart';

class ReverseReplenishmentPage extends StatelessWidget {
  const ReverseReplenishmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse Replenishment'),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text('Reverse Replenishment Functionality'),
      ),
    );
  }
}
