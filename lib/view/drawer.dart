import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // DrawerHeader(
                //   child: Text('heder'.toUpperCase()),
                //   decoration: BoxDecoration(
                //     color: Colors.grey[100]
                //   ),
                // ),
                UserAccountsDrawerHeader(
                  accountName: Text('ibobo',style: TextStyle(fontWeight: FontWeight.bold),),
                  accountEmail: Text('ibobo99@wo.com.cn'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3736115035,3383618134&fm=85&app=63&f=JPEG?w=121&h=75&s=5FB22DC56470119432A4ACDA03004091'),
                  ),
                ),
                ListTile(
                  title: Text('Message',textAlign:TextAlign.center),
                  trailing: Icon(Icons.message,color: Colors.black12,size:22.0),
                ),
                ListTile(
                  title: Text('Favorite',textAlign:TextAlign.center),
                  trailing: Icon(Icons.favorite,color: Colors.black12,size:22.0),
                ),
                ListTile(
                  title: Text('Settings',textAlign:TextAlign.center),
                  trailing: Icon(Icons.settings,color: Colors.black12,size:22.0),
                ),
              ],
            ),
          )
    );
  }
}