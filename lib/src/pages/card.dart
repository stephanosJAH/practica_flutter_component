import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0 ),
          _cardTipo2(),
          SizedBox(height: 30.0 ),
           _cardTipo1(),
          SizedBox(height: 30.0 ),
          _cardTipo2(),
          SizedBox(height: 30.0 ),
           _cardTipo1(),
          SizedBox(height: 30.0 ),
          _cardTipo2(),
          SizedBox(height: 30.0 ),
           _cardTipo1(),
          SizedBox(height: 30.0 ),
          _cardTipo2(),
          SizedBox(height: 30.0 ),
          
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        children: <Widget> [
          ListTile(
            title: Text('Hola soy una Tarjeta'),
            subtitle: Text('Esteas es una tarjeta con una descripcion muy larga peero todavia no veo nada jaja EHHHH AHORA SI TE VEO!! '),
            leading: Icon(Icons.access_alarm, color: Colors.red,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              FlatButton(onPressed: (){}, child: Text('Cancelar')),
              FlatButton(onPressed: (){}, child: Text('Ok')),
            ],
          )
        ],
      ) ,
    );
  }

  Widget _cardTipo2(){

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Que lindo lugar'),
            
          )
        ],
      ),
    ); 

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );

  }

}