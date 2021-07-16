import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MarimbaApp());
}

class MarimbaApp extends StatelessWidget {  

  void tocarSom(int notaNumero) {
     final player = AudioCache();
     player.play('nota$notaNumero.wav');
  }

  Expanded criarBotao({Color cor , int numeroMusica}) {
          return Expanded(
                child: TextButton( onPressed: (){
                 tocarSom(numeroMusica);
                },
                  style: TextButton.styleFrom(backgroundColor: cor),
                  child: null,
                ),
              );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          title: Center(child: Text('Marimba')),
        ),
        body: SafeArea(
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.stretch,                          
            children: [              
              criarBotao(cor : Colors.red , numeroMusica : 1),
              criarBotao(cor : Colors.black , numeroMusica : 2),
              criarBotao(cor : Colors.yellow , numeroMusica : 3),
              criarBotao(cor : Colors.orange , numeroMusica : 4),
              criarBotao(cor : Colors.blue , numeroMusica : 5),
              criarBotao(cor : Colors.green , numeroMusica : 6),
              criarBotao(cor : Colors.brown , numeroMusica : 7),
            ],
          ),
        ),
      ),
    );
  }
}
