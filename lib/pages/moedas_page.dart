import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Cripto Moedas"),
        ),
      ),
      body: Center(
        child: Text("Olá Mundo!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}),
    );
  }
}