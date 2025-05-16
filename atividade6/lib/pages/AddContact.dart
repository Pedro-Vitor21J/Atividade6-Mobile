import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  List namesContacts = [];
  List emailsContacts = [];
  List phonesContacts = [];
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();

  // Adicionar contato
  void insertContact(String name, String email, String phone) {
    setState(() {
      namesContacts.add(name);
      emailsContacts.add(email);
      phonesContacts.add(email);
    });
    controllerName.clear();
    controllerEmail.clear();
    controllerPhone.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Adicionar Contato',
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
            //Campo de texto contato
            TextFormField(
              controller: controllerName,
              decoration: InputDecoration(
                labelText: 'Digite o nome do contato',
              ),
            ),

            //Campo de texto e-mail
            TextFormField(
              controller: controllerEmail,
              decoration: InputDecoration(
                labelText: 'Digite o e-mail do contato',
              ),
            ),

            //Campo de texto telefone
            TextFormField(
              controller: controllerPhone,
              decoration: InputDecoration(
                labelText: 'Digite o telefone do contato',
              ),
            ),

            TextButton(
              onPressed: () {
                String name = controllerName.text;
                String email = controllerEmail.text;
                String phone = controllerPhone.text;
                insertContact(name, email, phone);

                Navigator.pop(context, {
                  'name': name,
                  'email': email,
                  'phone': phone,
                });
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
