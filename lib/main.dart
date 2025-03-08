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
            //linha horizontal
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //espaço igual entre os elementos
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage('https://i.pinimg.com/736x/20/b9/41/20b941c237be1aed6efbe5e9facda4cc.jpg'
                  ),                  
                ),
                SizedBox(width: 16.0),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Avatar',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Desenvolvedor Flutter',
                      ),
                    ],
                  ),
                  )
              ],
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
