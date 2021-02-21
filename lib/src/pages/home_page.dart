import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
   
    return 
      Scaffold(
        appBar: AppBar(
          title: Text('Comententes'),
        ),
        body: _lista(),
      );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot <List<dynamic>> snapshot) {
          return ListView(
              children: _listaItems(context, snapshot.data)
          );
      },
    );

  }

  List<Widget> _listaItems( BuildContext context, List<dynamic> items ) {

    final List<Widget> opciones = [];

    items.forEach((opt) {
      
      final wListTemp = ListTile( 
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          //Ruta simple para unica ruta
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );
          // Navigator.push(context, route);
        } 
      );
      
       opciones..add(wListTemp)
               ..add(Divider());

    });

    return opciones;

  }

}