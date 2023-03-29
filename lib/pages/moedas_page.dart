import 'package:cripto_moedas/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {

    final tabela = MoedaRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Cripto Moedas"),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda){
          return ListTile(
            leading: Image.asset(tabela[moeda].icone),
            title: Text(tabela[moeda].nome),
            trailing: Text(tabela[moeda].preco.toString()),
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(), 
        itemCount: tabela.length),
    );
  }
}