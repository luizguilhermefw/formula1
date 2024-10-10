import 'package:flutter/material.dart';

class CalendarioScreen extends StatelessWidget {
  const CalendarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>>corridas = [
      {
        'etapa': 'GP do Bahrein',
        'circuito': 'Circuito Internacional do Bahrein',
        'dias': '29/02 a 02/03',
      },
      {
        'etapa': 'GP da Arábia Saudita',
        'circuito': 'Circuito Jeddah Corniche',
        'dias': '07/03 a 09/03',
      },
      {
        'etapa': 'GP da Austrália',
        'circuito': 'Circuito de Albert Park',
        'dias': '22/03 a 24/03',
      },
      {
        'etapa': 'GP do Japão',
        'circuito': 'Circuito de Suzuka',
        'dias': '05/04 a 07/04',
      },
      {
        'etapa': 'GP da China',
        'circuito': 'Circuito Internacional de Xangai',
        'dias': '19/04 a 21/04',
      },
      {
        'etapa': 'GP de Miami',
        'circuito': 'Autódromo Internacional de Miami',
        'dias': '03/05 a 05/05',
      },
      {
        'etapa': 'GP da Emilia-Romagna',
        'circuito': 'Autódromo Enzo e Dino Ferrari',
        'dias': '17/05 a 19/05',
      },
      {
        'etapa': 'GP de Mônaco',
        'circuito': 'Circuito de Monte Carlo',
        'dias': '24/05 a 26/05',
      },
      {
        'etapa': 'GP do Canadá',
        'circuito': 'Circuito Gilles Villeneuve',
        'dias': '	07/06 a 09/06',
      },
      {
        'etapa': 'GP da Espanha',
        'circuito': 'Circuito de Barcelona-Catalunha',
        'dias': '21/06 a 23/06',
      },
      {
        'etapa': 'GP da Áustria',
        'circuito': 'Circuito RB Ring',
        'dias': '28/06 a 30/06',
      },
      {
        'etapa': 'GP da Inglaterra',
        'circuito': 'Circuito Hungaroring',
        'dias': '19/07 a 21/07',
      },
      {
        'etapa': 'GP da Hungria',
        'circuito': 'Circuito Internacional de Xangai',
        'dias': '19/04 a 21/04',
      },
      {
        'etapa': 'GP da Bélgica',
        'circuito': 'Autódromo Internacional de Miami',
        'dias': '03/05 a 05/05',
      },
      {
        'etapa': 'GP da Emilia-Romagna',
        'circuito': 'Circuito de Spa-Francorchamps',
        'dias': '	26/07 a 28/07',
      },
      {
        'etapa': 'GP da Holanda',
        'circuito': '	Circuito de Zandvoort',
        'dias': '	23/08 a 25/08',
      },
      {
        'etapa': 'GP da Itália',
        'circuito': '	Autódromo Nacional de Monza',
        'dias': '30/08 a 01/09',
      },
      {
        'etapa': 'GP do Azerbaijão',
        'circuito': 'Circuito de Baku',
        'dias': '13/09 a 15/09',
      },
      {
        'etapa': 'GP de Singapura',
        'circuito': 'Circuito de Marina Bay',
        'dias': '20/09 a 22/09',
      },
      {
        'etapa': 'GP dos Estados Unidos',
        'circuito': '	Circuito das Américas',
        'dias': '18/10 a 20/10',
      },
      {
        'etapa': 'GP do México',
        'circuito': 'Autódromo Hermanos Rodríguez',
        'dias': '27/10 a 27/10',
      },
      {
        'etapa': 'GP do México',
        'circuito': 'Autódromo Hermanos Rodríguez',
        'dias': '	27/10 a 27/10',
      },
      {
        'etapa': 'GP de São Paulo',
        'circuito': 'Autódromo José Carlos Pace (Interlagos)',
        'dias': '01/11 a 03/11',
      },
      {
        'etapa': 'GP de Las Vegas',
        'circuito': 'Circuito de Las Vegas',
        'dias': '21/11 a 23/11',
      },
      {
        'etapa': 'GP do Catar',
        'circuito': 'Circuito Internacional de Lusail',
        'dias': '29/11 a 01/12',
      },
      {
        'etapa': 'GP de Abu Dhabi',
        'circuito': 'Circuito de Yas Marina',
        'dias': '06/12 a 08/12',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendário'),
      ),
      body: ListView.builder(
        itemCount: corridas.length,
        itemBuilder: (context, index) {
          final corrida = corridas[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Etapa: ${corrida['etapa']}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Circuito: ${corrida['circuito']}'),
                  Text('Dias: ${corrida['dias']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}