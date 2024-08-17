import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to WMS'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //Defined the button style once
    final ButtonStyle outlinedButtonStyle =
        OutlinedButton.styleFrom(shape: const LinearBorder());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.inventory_outlined),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Item Receipt'),
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.start,
            icon: const Icon(Icons.warehouse),
            style: outlinedButtonStyle,
            onPressed: () {},
            label: const Text('Check In'),
          ),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.forklift),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Pick Order')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.receipt),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Cycle Count')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.content_paste_go_outlined),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Transfer')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.add_shopping_cart),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Products')),
          OutlinedButton.icon(
              iconAlignment: IconAlignment.start,
              icon: const Icon(Icons.emoji_transportation),
              style: outlinedButtonStyle,
              onPressed: () {},
              label: const Text('Route Return')),
        ],
      ),
    );
  }
}
