import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewfilePage extends StatefulWidget {
   NewfilePage({Key? key,required this.imgUrl }) : super(key: key);
  String imgUrl;

  @override
  State<NewfilePage> createState() => _NewfilePageState();
}

class _NewfilePageState extends State<NewfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(widget.imgUrl),
    );
  }
}