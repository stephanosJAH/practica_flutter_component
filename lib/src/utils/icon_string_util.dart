import 'package:flutter/material.dart';

final _icon = <String, IconData> {

    'add_alert'  : Icons.add_alert,
    'accessibility'  : Icons.accessibility,
    'folder_open'  : Icons.folder_open,
    'donut_large'  : Icons.donut_large,

};

Icon getIcon( String nameIcon )
{
  return Icon( _icon[nameIcon], color: Colors.blue,);
}