import 'package:code_practice/Functions/Carrier%20Functions/E-Way%20Bill/eway_bill_home.dart';
import 'package:code_practice/Functions/Carrier%20Functions/E-Bill%20of%20Lading/ebill_of_lading_home.dart';
import 'package:code_practice/Functions/Carrier%20Functions/Proof%20Of%20Delivery/prood_of_delivery_home.dart';
import 'package:code_practice/Functions/Operator%20Functions/Consignments/consignments_home_page.dart';
import 'package:code_practice/Homepages/operator_homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckInButtonPage extends StatelessWidget {
  const CheckInButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const BeveledRectangleBorder());

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
          OutlinedButton(
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransferButtonPage()),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  Icons.inventory_outlined,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Consignments",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            // label: const Text(
            //   'Consignments',
            //   style: TextStyle(color: Colors.black),
            // ),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(
              Icons.description_outlined,
              size: 50,
              color: Colors.black,
            ),
            style: outlinedButtonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EBOLHome()),
              );
            },
            label: const Text(
              'E Bill of Lading',
              style: TextStyle(color: Colors.black),
            ),
          ),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.local_shipping_outlined,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EWayBillHome()),
                );
              },
              label: const Text(
                'E-Way Bill',
                style: TextStyle(color: Colors.black),
              )),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const FaIcon(
                Icons.receipt_long_outlined,
                size: 50,
                color: Colors.black,
              ),
              style: outlinedButtonStyle,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProofOfDeliveryHome()),
                );
              },
              label: const Text(
                'Proof of Delivery',
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
