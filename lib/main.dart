import 'package:flutter/material.dart';

//classe principal
class LayoutDemo extends StatelessWidget
{
  Widget build(BuildContext context){
    return Scaffold(
      //APP BAR
      appBar: AppBar(
        title: Text("Exemplo de Layout"),
        backgroundColor: Colors.blue.shade700,
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      //body da pagina
      body: Column( //organiza em colunas
        mainAxisSize: MainAxisSize.max, //TAMANHO MAX DA TELA
        crossAxisAlignment: CrossAxisAlignment.center, //todos os componentes centralizados
        children: <Widget>[
          //seção de perfil 
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            //cor de fundo
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LayoutDemo(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
    ),
  ));
}
