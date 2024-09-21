import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RouteReturnPage extends StatelessWidget {
  const RouteReturnPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Defined the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const LinearBorder());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Return'),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.camera_enhance, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Check-In Item'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const FaIcon(Icons.camera_enhance, size: 50),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Check-In Pallet'),
          )
        ],
      ),
    );
  }
}
