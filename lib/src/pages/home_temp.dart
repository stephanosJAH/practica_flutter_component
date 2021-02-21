import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Componentes')
      ),
      body: ListView(
        children: _crearListaCorta()
      )
      
    );
  }

  // List<Widget> _crearItems(opciones){

  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opciones) {
      
  //     final tempWList = ListTile(
  //       title: Text(opt),
  //     );

  //     lista..add(tempWList)
  //          ..add( Divider(color: Colors.blue,) );

  //   }

  //   return lista;
  // }

  List<Widget> _crearListaCorta(){

    var wList = opciones.map(( item ) {
      
      return Column(
        children: [
          ListTile( 
            title: Text( item + '!'),
            subtitle: Text('Esta quedando'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.keyboard_arrow_right), 
            onTap: (){},),
          Divider(color: Colors.blue,)
        ],
      );

    }).toList();

    return wList;

  }

}