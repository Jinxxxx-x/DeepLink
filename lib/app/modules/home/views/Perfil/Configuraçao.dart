// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class ConfiView extends StatelessWidget {
  const ConfiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 92, 97, 69),
        title: Text('Configurações'),
      ),
    );
  }
}
