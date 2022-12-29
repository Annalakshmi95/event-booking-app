

import 'package:event_bookingapp_1/account.dart';
import 'package:event_bookingapp_1/catogries.dart';
import 'package:event_bookingapp_1/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class BottomnavigationbarPage extends StatefulWidget {
  const BottomnavigationbarPage({Key? key}) : super(key: key);

  @override
  State<BottomnavigationbarPage> createState() => _BottomnavigationbarPageState();
}

class _BottomnavigationbarPageState extends State<BottomnavigationbarPage> {
  int pick=0;
  void drop(int intex){
    setState(() {
      pick=intex;
    });
  }
  final List<Widget> page = [
HomePage(),
CatogriesPage(),
Accountdart()];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WEDDING & BIRTHDAY DECORATION",
      ),),
      drawer: Drawer(
        child: Column(
          children: [
    UserAccountsDrawerHeader(currentAccountPicture: Image.network("https://w7.pngwing.com/pngs/81/570/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png"),
                  accountName: Text('name'), accountEmail: Text("email")),
                  ListTile(leading: Icon(Icons.home),
                  title: Text('home'),),
                  ListTile(leading: Icon(Icons.person),
                  title: Text('profile'),),
                  ListTile(leading: Icon(Icons.mic),
                  title: Text('sound'),),
                  ListTile(leading: Icon(Icons.notifications),
                  title: Text('notification')),
                  ListTile(leading: Icon(Icons.home),
                  title: Text('home'),),
          ],
        ),
      ),
body:page[pick],
bottomNavigationBar:BottomNavigationBar(
  currentIndex: pick,
  onTap: drop,
  selectedItemColor: Colors.green,
  unselectedItemColor: Colors.red,
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
  BottomNavigationBarItem(icon: Icon(Icons.category),label: "categories"),
  BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "account"),
  
]) ,
);   
}
}