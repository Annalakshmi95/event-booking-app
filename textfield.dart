import 'package:event_bookingapp_1/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class TextfieldPage extends StatefulWidget {
  const TextfieldPage({Key? key}) : super(key: key);

  @override
  State<TextfieldPage> createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(backgroundColor: Colors.blueGrey,
    foregroundColor: Colors.orange,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('singin')],

    ),
actions: [
  IconButton(onPressed: (() {
   Navigator.push(context, MaterialPageRoute(builder: (context) => BottomnavigationbarPage(),));
  }), icon: Icon(Icons.search))
],    
),
body: SingleChildScrollView(
  child: Column(children: [
    TextField(decoration: InputDecoration(
      hintText: "name",
    ),
    ),
    TextField(decoration: InputDecoration(
      hintText: "phonenumber", ),
      keyboardType: TextInputType.phone,),
       TextField(decoration: InputDecoration(
      hintText: "address", ),
      keyboardType: TextInputType.streetAddress,),
       TextField(decoration: InputDecoration(
      hintText: "emailaddress", ),
      keyboardType: TextInputType.emailAddress,)
  ],),
),
    
    
    
    
    );
  }
}