import 'package:flutter/material.dart';
import 'package:phone_book_ui/models/contact_model.dart';
import 'package:phone_book_ui/widgets/contact_list_item.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});
  Widget _buildContactForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Hasan',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12.0),
        TextFormField(
          decoration: const InputDecoration(
            hintText: '01745-777777',
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 16.0),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey[700],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              textStyle: const TextStyle(fontSize: 16),
            ),
            child: const Text('Add'),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildContactList() {
    return Column(
      children: dummyContacts
          .map((contact) => ContactListItem(contact: contact))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        backgroundColor: Colors.blueGrey[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildContactForm(),
              _buildContactList(),
            ],
          ),
        ),
      ),
    );
  }
}