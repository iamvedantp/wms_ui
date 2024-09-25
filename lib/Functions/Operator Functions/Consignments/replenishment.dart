import 'package:flutter/material.dart';

class ReplenishmentPage extends StatelessWidget {
  const ReplenishmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Replenishment'),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text('Replenishment Functionality'),
      ),
    );
  }
}
