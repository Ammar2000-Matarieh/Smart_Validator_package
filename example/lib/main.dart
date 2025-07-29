import 'package:flutter/material.dart';
import 'package:smart_form_validator_ai/smart_form_validator_ai.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Validator Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Smart Validator Example')),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: ValidationForm(),
        ),
      ),
    );
  }
}

class ValidationForm extends StatefulWidget {
  const ValidationForm({super.key});

  @override
  State<ValidationForm> createState() => _ValidationFormState();
}

class _ValidationFormState extends State<ValidationForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) => validateInput('Email', value ?? ''),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _phoneController,
            decoration: const InputDecoration(labelText: 'Phone'),
            validator: (value) => validateInput('Phone', value ?? ''),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('All inputs are valid!')),
                );
              }
            },
            child: const Text('Validate'),
          ),
        ],
      ),
    );
  }
}
