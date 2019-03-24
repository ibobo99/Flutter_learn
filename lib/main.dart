import 'package:flutter/material.dart';
import 'view/drawer.dart';
import 'view/listview.dart';
import 'view/bottom_navigation_bar.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink,
        highlightColor: Color.fromRGBO(255, 255, 225, 0.5),
        splashColor: Colors.white70,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          drawer:MyDrawer(),
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'menu',
            //   onPressed: () => {debugPrint('menu is pressed')},
            // ),
            title: Text("MyAPP"),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => {debugPrint('search is pressed')},
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
              MyListView(),
              Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
              Icon(Icons.directions_bike,size: 128.0,color: Colors.black12,)
            ],
          ),
          bottomNavigationBar: MyBNB()
        ));
  }
}
