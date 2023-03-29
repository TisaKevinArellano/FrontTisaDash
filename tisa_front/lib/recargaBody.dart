// ignore: file_names

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class Recargabody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: const [
          Expanded(
            child: 
            Text("Operador")),
            Expanded(
            child: 
            Text("Rol")),
            Expanded(
            child: 
            Text("Balance")),
        ],),Row(
          children: const [
          Expanded(
            child: 
            Text(" ")),
            Expanded(
            child: 
            Text(" ")),
            Expanded(
            child: 
            Text(" ")),
        ],
        ),
        Row(
          children: const [
          Expanded(
            child: 
            Text("Lores")),
            Expanded(
            child: 
            Text("Lores")),
            Expanded(
            child: 
            Text("Lores")),
        ],
        )
    ],);
  }
}
