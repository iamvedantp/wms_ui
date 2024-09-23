import 'package:flutter/material.dart';

class DispatchCreatePage extends StatefulWidget {
  const DispatchCreatePage({super.key});

  @override
  _DispatchCreatePageState createState() => _DispatchCreatePageState();
}

class _DispatchCreatePageState extends State<DispatchCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dispatchIdController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  final TextEditingController _itemCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Dispatch Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _dispatchIdController,
                decoration: const InputDecoration(
                  labelText: 'Dispatch ID',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Dispatch ID';
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
                    // Handle the dispatch creation logic here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Dispatch Order Created!')),
                    );
                  }
                },
                child: const Text('Create Dispatch'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dispatchIdController.dispose();
    _destinationController.dispose();
    _itemCountController.dispose();
    super.dispose();
  }
}
