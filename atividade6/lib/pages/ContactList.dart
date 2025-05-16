import 'package:atividade6/pages/AddContact.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Map<String, String>> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Agenda de Contato',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            //Rota para a página AddContact
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddContact();
                    },
                  ),
                );
              },
              child: Icon(Icons.add),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    title: Text(contact['name'] ?? ''),
                    subtitle: Text('${contact['email']}\n${contact['phone']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
