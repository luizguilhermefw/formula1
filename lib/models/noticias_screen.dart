import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> noticias = [
      {
        'imagem': 'assets/images_noticias/mercedez-hamiltonAndRussel.jpg',
        'titulo':
            'Hamilton confia em novo pacote de melhorias da Mercedes para GP dos EUA',
        'conteudo':
            'Lewis Hamilton, piloto da Mercedes, demonstrou otimismo em relação às atualizações que a equipe está preparando para o GP dos Estados Unidos. O heptacampeão tem enfrentado um período de adaptação devido à queda de desempenho da escuderia, que viu suas rivais avançarem no campeonato após o retorno das férias de verão da Fórmula 1. Apesar das oscilações recentes, o britânico acredita que o novo pacote de melhorias pode recolocar as "Flechas de Prata" na luta por posições de destaque, especialmente em um circuito onde ele já obteve ótimos resultados.\n\nMercedes enfrenta desafios para acompanhar o avanço das rivais\n\nApós o retorno das férias com três vitórias em quatro corridas, a Mercedes não conseguiu manter o ritmo competitivo na segunda metade do campeonato. Desde então, a equipe alemã conquistou apenas um pódio — o terceiro lugar de George Russell no Azerbaijão —, resultado favorecido por um acidente entre Carlos Sainz e Sergio Pérez nas voltas finais. Para Hamilton, o momento difícil não reflete uma piora no desempenho do carro, mas sim um avanço expressivo das concorrentes, como Ferrari e McLaren, que investiram fortemente em atualizações recentes.\n\nNão acredito que nosso carro tenha piorado, mas os outros evoluíram mais rápido, comentou Hamilton. Ele mencionou que a equipe levou uma pequena atualização para o GP da Bélgica, mas não a utilizou devido a problemas de ajuste. "Levamos uma atualização para Spa, mas acabamos não usando. Acho que outras equipes trouxeram mais atualizações para Zandvoort e Monza, especialmente a Ferrari. A McLaren também evoluiu bastante, explicou.\n\nDesempenho em Austin será crucial para a Mercedes\n\nCom cinco vitórias no Circuito das Américas, em Austin, Hamilton sabe que seu histórico positivo na pista não garante um bom resultado sem um carro competitivo. Nas edições mais recentes da corrida, o britânico figurou entre os três primeiros, exceto em 2023, quando foi desclassificado por irregularidades técnicas. Mesmo assim, havia terminado em segundo nas quatro provas anteriores. Para a corrida de 2024, Hamilton espera que o novo pacote de atualizações traga melhorias significativas, permitindo que a Mercedes possa competir em pé de igualdade com as principais equipes.\n\nÉ uma pista que eu gosto muito e onde tenho um bom histórico, mas preciso que o carro esteja à altura. Espero que as atualizações façam a diferença, sei que a equipe tem se esforçado muito para isso", afirmou o piloto, ressaltando a importância das melhorias para o restante da temporada.',
      },
      {
        'imagem': 'assets/images_noticias/gp-austin-pista.jpg',
        'titulo':
            'Próxima etapa da F1 2024: confira a data do GP dos Estados Unidos',
        'conteudo':
            'A corrida no Circuito das Américas, em Austin, Texas, será a 19ª etapa da temporada; no entanto, haverá um intervalo de quatro semanas sem provas antes deste grande prêmio em solo americano.\n\nApós a vitória de Lando Norris no GP de Singapura neste domingo, a F1 enfrentará mais um período de pausa em 2024; desta vez, "não oficial", devido a uma lacuna no calendário. Após essas quatro semanas sem corridas, o campeonato continuará com o GP dos Estados Unidos, no Circuito das Américas.\n\nAgendado para os dias 18 a 20 de outubro, o GP dos EUA também marcará o retorno das corridas sprint. Essas provas curtas, que oferecem pontos extras aos oito mais rápidos em uma disputa no sábado, já foram realizadas anteriormente em outras três etapas: China, Miami e Áustria, totalizando seis corridas sprint na temporada.\n\nDevido a isso, o formato do fim de semana seguirá um padrão especial: haverá apenas um treino livre, ao invés dos tradicionais três. Na sexta-feira, será definido o grid para a corrida sprint, enquanto no sábado ocorrerão a corrida sprint e a classificação para o domingo.\n\nO Circuito das Américas, em Austin, recebe a F1 desde 2012. Lewis Hamilton é o maior vencedor da pista, com cinco triunfos, enquanto o tricampeão Max Verstappen não fica muito atrás, tendo subido ao topo do pódio três vezes no Texas.\n\nNa edição anterior da prova, a disputa foi acirrada entre os dois multicampeões, semelhante ao que ocorreu em 2021 e 2022. Max largou da sexta posição e conquistou mais uma vitória ao defender sua liderança contra o heptacampeão da Mercedes. Hamilton, por sua vez, não conseguiu um lugar no pódio após ser desclassificado devido a uma infração técnica relacionada ao desgaste na prancha de madeira do assoalho do carro.'
      },
      {
        'imagem': 'assets/images_noticias/verstapenXnorris.jpg',
        'titulo':
            'Norris vence em Singapura e esquenta briga por título com Verstappen',
        'conteudo':
            'Neste final de semana, Lando Norris deu um passo gigante na disputa pelo campeonato mundial de Fórmula 1 ao conquistar uma impressionante vitória sobre Max Verstappen.\n\nEm uma corrida marcada por estratégia e habilidade, Norris demonstrou sua crescente forma e capacidade de competir em alto nível, desafiando o domínio do piloto da Red Bull. A vitória de Norris não foi apenas uma demonstração de talento, mas também um sinal claro deque ele está cada vez mais próximo de Verstappen na classificação. Com essa vitória, o piloto da McLaren se posiciona como um sério candidato ao título de 2024, prometendo uma disputa acirrada nas próximas etapas da temporada.\n\nOs fãs da Fórmula 1 podem esperar uma temporada emocionante, com Norris mostrando que está pronto para assumir a liderança e enfrentar Verstappen em uma batalha que promete ser histórica. À medida que a temporada avança, a rivalidade entre os dois pilotos só tende a se intensificar, e cada corrida será crucial para definir quem sairá como campeão. Fique ligado nas próximas corridas e acompanhe de perto essa luta épica pelo título mundial!',
      },
      {
        'imagem': 'assets/images_noticias/lando-norris.jpg',
        'titulo': 'GP de Singapura: Lando Norris leva quinta pole do ano',
        'conteudo':
            'Piloto da McLaren vai largar ao lado de Max Verstappen na corrida deste domingo, com Lewis Hamilton na segunda fila em terceiro lugar; sessão foi interrompida por batida de Carlos Sainz.\n\nEm uma demonstração impressionante de talento e determinação, Lando Norris alcançou sua sexta pole position na carreira e a quinta desta temporada, consolidando sua melhor fase na Fórmula 1. No GP de Singapura, realizado neste sábado, o piloto da McLaren marcou 1m29s525, superando Max Verstappen por uma margem de 0s 2 e deixando Lewis Hamilton para trás.\n\nEssa conquista não apenas destaca o desempenho excepcional de Norris, mas também reforça sua posição como um dos principais concorrentes ao título de 2024. Com cada vez mais confiança e velocidade, ele promete trazer emoção nas corridas que estão por vir. Fique ligado para ver como essa batalha se desenrola!'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notícias',
          style: TextStyle(fontFamily: 'Formula1'),
        ),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          final noticia = noticias[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NoticiaCompletaScreen(noticia: noticia),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(noticia['imagem']!),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      noticia['titulo']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class NoticiaCompletaScreen extends StatelessWidget {
  final Map<String, String> noticia;

  const NoticiaCompletaScreen({super.key, required this.noticia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noticia['titulo']!),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Formula1',
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
            children: [
              WidgetSpan(
                child: Text(
                  noticia['conteudo']!,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
