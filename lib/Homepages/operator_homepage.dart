import 'package:code_practice/Functions/Operator%20Functions/ASN/asn_home.dart';
import 'package:code_practice/Functions/Operator%20Functions/Dispatch%20Orders/dispatchordershome.dart';
import 'package:code_practice/Functions/Operator%20Functions/Goods%20Receipt%20Notes/grn_home.dart';
import 'package:code_practice/Functions/Operator%20Functions/STO/sto_home.dart';
import 'package:code_practice/Functions/Operator%20Functions/Shipment%20Orders/shipmentordershome.dart';
import 'package:code_practice/Homepages/carrier_homepage.dart';
import 'package:code_practice/Functions/Operator%20Functions/Picklists/picklists_home_page.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/consignments_home_page.dart';
import 'package:code_practice/Functions/Operator%20Functions/Putaway/putaway_home_page.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsHomepage extends StatelessWidget {
  const ButtonsHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const BeveledRectangleBorder());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back button
        title: const Text('Welcome Operator'),
        backgroundColor: Colors.blueGrey,
        actions: [
          DropdownButton(
            value: "Operator",
            items: const [
              DropdownMenuItem(
                value: "Operator",
                child: Text('Operator'),
              ),
              DropdownMenuItem(
                value: "Carrier",
                child: Text('Carrier'),
              ),
            ],
            onChanged: (value) {
              if (value == "Operator") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ButtonsHomepage(),
                  ),
                );
              } else if (value == "Carrier") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckInButtonPage(),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          CustomOutlinedButton(
            icon: Icons.inventory_outlined,
            label: 'Stock Transfer Orders',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StockTransferOrderHome()),
              );
            },
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     FaIcon(
            //       Icons.inventory_outlined,
            //       size: 50,
            //       color: Colors.black,
            //     ),
            //     SizedBox(height: 10), // Space between icon and text
            //     Text(
            //       'Stock Transfer Orders',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //   ],
            // ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShipmentOrdersHome()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.warehouse,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'Shipment Orders',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DispatchOrdersHome()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.forklift,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'Dispatch Orders',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ASNHome()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.construction_rounded,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'ASN',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransferButtonPage(),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.content_paste_go_outlined,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'Consignments',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const GoodsReceiptNotesHome()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.add_shopping_cart,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'Goods Receipt Notes',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RouteReturnPage(),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.emoji_transportation,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'Picklists',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PutawayPage(),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  Icons.emoji_transportation,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(height: 10),
                Text(
                  'Putaways',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
