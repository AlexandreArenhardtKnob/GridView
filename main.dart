import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Opcao {
  String titulo;
  IconData icone;

  Opcao({this.titulo,this.icone});
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Opcao> opcoes = <Opcao> [
    Opcao(titulo: "Carro", icone: Icons.directions_car),
    Opcao(titulo: "Bicicleta", icone: Icons.directions_bike),
    Opcao(titulo: "Barco", icone: Icons.directions_boat),
    Opcao(titulo: "Ônibus", icone: Icons.directions_bus),
    Opcao(titulo: "E-Mail", icone: Icons.email),
    Opcao(titulo: "Carro", icone: Icons.people_outline),
    Opcao(titulo: "Pessoas", icone: Icons.directions_car),
    Opcao(titulo: "Alarme", icone: Icons.add_alarm),
    Opcao(titulo: "Van", icone: Icons.airport_shuttle),
    Opcao(titulo: "Telefone", icone: Icons.phone),
    Opcao(titulo: "Música", icone: Icons.audiotrack),
    Opcao(titulo: "Carro", icone: Icons.directions_car),
    Opcao(titulo: "Bicicleta", icone: Icons.directions_bike),
    Opcao(titulo: "Barco", icone: Icons.directions_boat),
    Opcao(titulo: "Ônibus", icone: Icons.directions_bus),
    Opcao(titulo: "E-Mail", icone: Icons.email),
    Opcao(titulo: "Carro", icone: Icons.people_outline),
    Opcao(titulo: "Pessoas", icone: Icons.directions_car),
    Opcao(titulo: "Alarme", icone: Icons.add_alarm),
    Opcao(titulo: "Van", icone: Icons.airport_shuttle),
    Opcao(titulo: "Telefone", icone: Icons.phone),
    Opcao(titulo: "Música", icone: Icons.audiotrack),
  ];


  int qualOrdem = 0;
  IconData icone = Icons.arrow_downward;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(icone),
            onPressed: () {
              setState(() {
                if (qualOrdem==0) {
                  opcoes.sort((a, b) {
                    return a.titulo.toLowerCase().compareTo
                      (b.titulo.toLowerCase());
                  });
                  qualOrdem=1;
                  icone = Icons.arrow_upward;
                } else {
                  opcoes.sort((a, b) {
                    return b.titulo.toLowerCase().compareTo
                      (a.titulo.toLowerCase());
                  });
                  qualOrdem=0;
                  icone = Icons.arrow_downward;
                }
              });
            },
          )
        ],



      ),


      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(opcoes.length, (index) {
          return Center(
              child: Column(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[

                        Icon(opcoes[index].icone),
                        Text(opcoes[index].titulo)
                      ],
                    ),
                    onPressed: () {
                      setState(() {

                      });
                    },

                  ),

                ],
              ),
          );
        }),
      ),
    );
  }

}

