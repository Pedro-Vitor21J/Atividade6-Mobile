import 'package:flutter/material.dart';
import 'package:atividade6/pages/ContactList.dart';
import 'package:atividade6/pages/AddContact.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ContactList());
  }
}
