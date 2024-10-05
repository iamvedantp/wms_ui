import 'package:code_practice/Functions/Operator%20Functions/STO/sto_create.dart';
import 'package:code_practice/Functions/Operator%20Functions/STO/sto_review.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockTransferOrderHome extends StatelessWidget {
  const StockTransferOrderHome({super.key});

  @override
  Widget build(BuildContext context) {
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
          CustomOutlinedButton(
            icon: FontAwesomeIcons.plus,
            label: "Create Transfer",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateStockTransferPage()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: FontAwesomeIcons.rectangleList,
            label: "Review Transfers",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReviewStockTransferPage()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: FontAwesomeIcons.circleXmark,
            label: "Cancel Transfer",
            onPressed: () {
              // Implement cancel functionality here
            },
          ),
        ],
      ),
    );
  }
}
