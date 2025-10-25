import 'package:flutter/material.dart';
import 'package:phone_book_ui/models/contact_model.dart';

class ContactListItem extends StatelessWidget {
  final Contact contact;

  const ContactListItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.brown[400],
          size: 30,
        ),

        title: Text(
          contact.name,
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.w500,
          ),
        ),

        subtitle: Text(
          contact.phoneNumber,
          style: const TextStyle(color: Colors.black87),
        ),

        trailing: Icon(
          Icons.call,
          color: Colors.blue[600],
          size: 28,
        ),
      ),
    );
  }
}