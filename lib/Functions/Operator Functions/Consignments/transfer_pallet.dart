import 'package:flutter/material.dart';

class TransferPalletPage extends StatelessWidget {
  const TransferPalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    String palletId = 'Pallet 1';
    String sourceLocation = '';
    String destinationLocation = '';
    int numberOfPallets = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Pallet'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Select Pallet'),
              value: palletId,
              items: <String>['Pallet 1', 'Pallet 2', 'Pallet 3']
                  .map((String pallet) {
                return DropdownMenuItem<String>(
                  value: pallet,
                  child: Text(pallet),
                );
              }).toList(),
              onChanged: (value) {
                palletId = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Source Location'),
              onChanged: (value) {
                sourceLocation = value;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Destination Location'),
              onChanged: (value) {
                destinationLocation = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Number of Pallets'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                numberOfPallets = int.tryParse(value) ?? 1;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform the pallet transfer
              },
              child: const Text('Transfer Pallet'),
            ),
          ],
        ),
      ),
    );
  }
}
