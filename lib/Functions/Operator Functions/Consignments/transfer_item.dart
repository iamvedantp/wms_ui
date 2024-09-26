import 'package:flutter/material.dart';

class TransferItemPage extends StatelessWidget {
  const TransferItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Item'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text('Transfer Item Functionality'),
      ),
    );
  }
}
