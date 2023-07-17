// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';

class NaRedePage extends StatefulWidget {
  const NaRedePage({super.key});

  @override
  State<NaRedePage> createState() => _NaRedePageState();
}

class _NaRedePageState extends State<NaRedePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: const Center(
      child: Text('Rede'),
    ));
  }
}
