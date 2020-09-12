import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  Color _color = Colors.black12;
  var _imageApp = AssetImage("images/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelecionada(String escolhido){
    
    var opcoes = [
      "pedra",
      "papel",
      "tesoura"
    ];

    var numrandomico = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numrandomico];

    if(escolhaApp == escolhido){
      //empate
     _mensagem = "Empate";
     _color = Colors.black12;
    }else if(escolhido == 'pedra' && escolhaApp == "tesoura"){
      //user ganhou
      _mensagem = "Ganhou";
      _color = Colors.blue;
    }else if(escolhido == 'papel' && escolhaApp == "pedra"){
      //user ganhou
      _mensagem = "Ganhou";
      _color = Colors.blue;
    }else  if(escolhido == 'tesoura' && escolhaApp == "papel"){
      //user  ganhou
      _mensagem = "Ganhou";
      _color = Colors.blue;
    }else{
      //app ganhou
      _mensagem = "Perdeu";
      _color = Colors.red;
    }

    _imageApp =  AssetImage("images/$escolhaApp.png");
    
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpô"),
      ),
      body: 
      Container(
        color: _color, 
        child: 
          Column(
          

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 32, bottom: 16
              ),
              child: 
                Text("Escolha do App", textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
            ),

            
            Image(image: this._imageApp),
            // Image.asset("images/padrao.png"),

            
            Padding(
              padding: EdgeInsets.only(
                top: 32, bottom: 16
              ),
              child: 
                Text(_mensagem, textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    GestureDetector(
                      onTap: () => _opcaoSelecionada('papel'), 
                      child: Image.asset("images/papel.png", height: 100),
                    ),
                    
                    GestureDetector(
                      onTap: () => _opcaoSelecionada('pedra'),  
                      child: Image.asset("images/pedra.png", height: 100),
                    ),

                    GestureDetector(
                      onTap: () => _opcaoSelecionada('tesoura'),  
                      child: Image.asset("images/tesoura.png", height: 100),
                    ),

                  ],
                ),
            )

          ],
          
        ),
      ),
      
    );
  }
}