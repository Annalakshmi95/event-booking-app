import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Accountdart extends StatefulWidget {
  const Accountdart({Key? key}) : super(key: key);

  @override
  State<Accountdart> createState() => _AccountdartState();
}

class _AccountdartState extends State<Accountdart> {
  List<String>Account=['WISHLIST','OFFERS','REVIEW','QUESTION&ANSWER','HELP'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemCount: Account.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Container(child: Text(Account[index]),),
        );
      },),);
    
  }
}