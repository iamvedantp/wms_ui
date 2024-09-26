import 'package:flutter/material.dart';

class ShipmentCreatePage extends StatefulWidget {
  @override
  _ShipmentCreatePageState createState() => _ShipmentCreatePageState();
}

class _ShipmentCreatePageState extends State<ShipmentCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _shipmentIdController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  final TextEditingController _itemCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Shipment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _shipmentIdController,
                decoration: const InputDecoration(
                  labelText: 'Shipment ID',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Shipment ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _destinationController,
                decoration: const InputDecoration(
                  labelText: 'Destination',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a destination';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _itemCountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Number of Items',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of items';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Shipment Created!')),
                    );
                  }
                },
                child: const Text(
                  'Create Shipment',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _shipmentIdController.dispose();
    _destinationController.dispose();
    _itemCountController.dispose();
    super.dispose();
  }
}
