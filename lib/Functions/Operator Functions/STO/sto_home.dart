import 'package:code_practice/Functions/Operator%20Functions/STO/sto_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/STO/sto_review.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockTransferOrderHome extends StatelessWidget {
  const StockTransferOrderHome({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Transfer Orders'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of buttons per row
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        padding: const EdgeInsets.all(20),
        children: [
          OutlinedButton.icon(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateStockTransferPage()),
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.plus,
              size: 50,
              color: Colors.black,
            ), // Icon for 'Create Transfer'
            label: const Text(
              'Create Transfer',
              style: TextStyle(color: Colors.black),
            ),
          ),
          OutlinedButton.icon(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReviewStockTransferPage()),
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.rectangleList,
              size: 50,
              color: Colors.black,
            ), // Icon for 'Review Transfers'
            label: const Text(
              'Review Transfers',
              style: TextStyle(color: Colors.black),
            ),
          ),
          OutlinedButton.icon(
            style: outlinedButtonStyle,
            onPressed: () {
              // Add cancel functionality here
            },
            icon: const FaIcon(
              FontAwesomeIcons.circleXmark,
              size: 50,
              color: Colors.black,
            ), // Icon for 'Cancel Transfer'
            label: const Text(
              'Cancel Transfer',
              style: TextStyle(color: Colors.black),
            ),
          ),
          // You can add more buttons here as necessary
        ],
      ),
    );
  }
}
