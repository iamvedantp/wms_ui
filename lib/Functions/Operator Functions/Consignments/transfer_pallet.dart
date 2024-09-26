import 'package:flutter/material.dart';

class TransferPalletPage extends StatelessWidget {
  const TransferPalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Pallet'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text('Transfer Pallet Functionality'),
      ),
    );
  }
}
