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

class ButtonsHomepage extends StatelessWidget {
  const ButtonsHomepage({super.key});

  @override
  Widget build(BuildContext context) {
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
          ),
          CustomOutlinedButton(
            icon: Icons.warehouse,
            label: "Shipment Orders",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShipmentOrdersHome()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.forklift,
            label: "Dispatch Orders",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DispatchOrdersHome()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.construction_rounded,
            label: "ASN",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ASNHome()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.content_paste_go_outlined,
            label: 'Consignments',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransferButtonPage(),
                ),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.add_shopping_cart,
            label: 'Goods Receipt Notes',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const GoodsReceiptNotesHome()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.emoji_transportation,
            label: 'Picklists',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RouteReturnPage(),
                ),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.emoji_transportation,
            label: 'Putaways',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PutawayPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
