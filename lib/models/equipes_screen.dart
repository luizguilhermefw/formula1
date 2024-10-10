import 'package:flutter/material.dart';
import '../models/equipe.dart';

class EquipesScreen extends StatelessWidget {
  const EquipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    equipes.sort((a, b) => b.pontuacao.compareTo(a.pontuacao));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Ranking de Equipes',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Text(
              'PT',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Formula1',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      body: ListView.builder(
        itemCount: equipes.length,
        itemBuilder: (context, index) {
          final equipe = equipes[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
                vertical: 4.0, horizontal: 16.0),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${index + 1}º '),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 2.0,
                    ),
                  ),
                  child: SizedBox( // Adicione o SizedBox
                    height: 60,
                    width: 60,
                    child: ClipOval(
                      child: Image.asset(
                        equipe.fotoPerfil,
                        fit: BoxFit.cover, // Use BoxFit.cover para cobrir o espaço
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    equipe.equipe,
                    style: const TextStyle(
                      fontFamily: 'Formula1',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            trailing: Text(
              '${equipe.pontuacao}',
              style: const TextStyle(
                fontFamily: 'Formula1',
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          );
        },
      ),
    );
  }
}