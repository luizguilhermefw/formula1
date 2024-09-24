import 'package:flutter/material.dart';
import '../models/piloto.dart';

class PilotoDetailsScreen extends StatelessWidget {final Piloto piloto;

const PilotoDetailsScreen({super.key, required this.piloto});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(piloto.nome),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(piloto.fotoPerfil),
      ),
      const SizedBox(height: 20),
      Text('Nome: ${piloto.nome}'),
      Text('Equipe: ${piloto.equipe}'),
      Text('Número: ${piloto.numero}'),
      // Adicione outros widgets para exibir mais detalhes do piloto],
    ]),
  ),
  );
}
}