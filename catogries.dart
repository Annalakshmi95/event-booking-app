import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CatogriesPage extends StatefulWidget {
  const CatogriesPage({Key? key}) : super(key: key);

  @override
  State<CatogriesPage> createState() => _CatogriesPageState();
}

class _CatogriesPageState extends State<CatogriesPage> {
  List <String>offers=['STAGE DECORATION','DRESS','PHOTOGRAPHY','FOOD','DINNING HALL','INVITATION','MORE'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: offers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(child: Text(offers[index]),),
            
          );
        },),
    
    );
  }
}