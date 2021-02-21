import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar( 
        title : Text('Alertas') 
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.cyan,
          shape: StadiumBorder(),
          onPressed: (){
            _mostrarAlerta(context);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.inventory),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      );
  
    }
            
    void _mostrarAlerta(BuildContext context) {
      //RoundedRectangleBorder( BorderRadius.circular(50.0) )
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text('Alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                Text('Esta es la primera alerta'),
                FlutterLogo( size: 100.0, )
              ],
            ),
            actions: <Widget> [
              FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
              FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Ok')),
            ],
          );
        }
     );
    }
}