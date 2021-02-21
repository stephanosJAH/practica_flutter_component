import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title : Text('Avatar'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only( right: 10.0 ),
            child: CircleAvatar(
              child: Text('EC'),
              backgroundColor: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only( right: 10.0 ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://es.web.img2.acsta.net/newsv7/19/05/25/18/53/5758891.jpg'),
              radius: 20.0,
            ),
          ),
        ],
      ),
      body: Center(
            child: FadeInImage(
              image: NetworkImage('https://es.web.img2.acsta.net/newsv7/19/05/25/18/53/5758891.jpg'),
              placeholder: AssetImage('assets/jar-loging.gif'),
              fadeInDuration: Duration( microseconds: 200), 
            ),
          ),
    );
  }
}