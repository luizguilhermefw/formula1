import 'package:flutter/material.dart';
import '../models/piloto.dart';
import 'piloto_details_screen.dart';

class PilotosScreen extends StatelessWidget {
  const PilotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    pilotos.sort((a, b) => b.pontuacao.compareTo(a.pontuacao));return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Ranking de pilotos',
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
            ),],
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'Formula1',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      body: ListView.builder(
        itemCount: pilotos.length,
        itemBuilder: (context, index) {
          final piloto = pilotos[index];
          return ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${index + 1}º '),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(piloto.fotoPerfil),
                    radius: 30,
                  ),
                ),
              ],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child:RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontFamily: 'Formula1',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '${piloto.nome.split(' ')[0]}\n',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: piloto.nome.split(' ').sublist(1).join(' '),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${piloto.equipe} #${piloto.numero}',
                      style: const TextStyle(
                        fontFamily: 'Formula1',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${piloto.pontuacao}',
                      style: const TextStyle(
                        fontFamily: 'Formula1',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PilotoDetailsScreen(piloto: piloto),
                ),
              );
            },
          );
        },
      ),
    );
  }
}