import 'package:code_practice/Functions/Carrier%20Functions/E-Way%20Bill/eway_bill_home.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_home.dart';
import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/prood_of_delivery_home.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/consignments_home_page.dart';
import 'package:code_practice/Homepages/operator_homepage.dart';
import 'package:code_practice/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class CheckInButtonPage extends StatelessWidget {
  const CheckInButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Removes the back button
        title: const Text('Welcome Carrier'),
        backgroundColor: Colors.blueGrey,
        actions: [
          DropdownButton(
            value: "Carrier",
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
            label: "Consignments",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferButtonPage()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.description_outlined,
            label: "E-Bill Of Lading",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EBOLHome()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.local_shipping_outlined,
            label: "E-Way Bill",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EWayBillHome()),
              );
            },
          ),
          CustomOutlinedButton(
            icon: Icons.receipt_long_outlined,
            label: "Proof Of Delivery",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProofOfDeliveryHome()),
              );
            },
          ),
        ],
      ),
    );
  }
}
