import 'dart:async';
import 'package:flutter/material.dart';
import '../models/piloto.dart';

class PilotoDetailsScreen extends StatefulWidget {
  final Piloto piloto;

  const PilotoDetailsScreen({super.key, required this.piloto});

  @override
  State<PilotoDetailsScreen> createState() => _PilotoDetailsScreenState();
}

class _PilotoDetailsScreenState extends State<PilotoDetailsScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: -1.0, end: 1.0).animate(_controller);

    _controller.forward();

    Timer.periodic(const Duration(seconds: 4), (timer) {
      _controller.animateTo(0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut);
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData equipeTheme = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: widget.piloto.corEquipe),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.piloto.corEquipe),
        ),
        contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0, horizontal: 16.0),
      ),
    );return Scaffold(
      appBar: AppBar(
        title: Text(widget.piloto.nome),
      ),
      body: Center(
        child: Theme(
          data: equipeTheme,
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.purple, Colors.orange],
                          ),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: child!,
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage(widget.piloto.fotoPerfil),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    initialValue: widget.piloto.nome,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontFamily: 'Formula1'),
                    readOnly: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nacionalidade: ${widget.piloto.nacionalidade}',
                          style: const TextStyle(fontFamily: 'Formula1'),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images_flags/${widget.piloto.nomeArquivoBandeira}.png',
                          width: 30,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  _buildDetailRow('Equipe:', widget.piloto.equipe),
                  _buildDetailRow('Número:', widget.piloto.numero.toString()),
                  _buildDetailRow('Idade:', '${widget.piloto.idade} anos'),
                  _buildDetailRow(
                      'Pole Positions:', widget.piloto.polePositions.toString()),
                  _buildDetailRow('Best Turn:', widget.piloto.voltaMaisRapida),
                  _buildDetailRow('Pódios:', widget.piloto.podios.toString()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              initialValue: label,
              decoration: const InputDecoration(border: InputBorder.none),
              style: const TextStyle(fontFamily: 'Formula1'),
              readOnly: true,
            ),
          ),
          Expanded(
            child: TextFormField(
              initialValue: value,
              textAlign: TextAlign.end,
              decoration: const InputDecoration(border: InputBorder.none),
              style: const TextStyle(fontFamily: 'Formula1'),
              readOnly: true,
            ),
          ),
        ],
      ),
    );
  }
}