import 'package:flutter/material.dart';


class MyBNB extends StatefulWidget {
  @override
  _MyBNBState createState() => _MyBNBState();
}

class _MyBNBState extends State<MyBNB> {

  int _currentIndex = 0;

  void _onTapHander(int index){
    setState(()=>{
        _currentIndex = index
     });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
           type:BottomNavigationBarType.fixed,
           //fixedColor: Colors.black,
           currentIndex: _currentIndex,
           onTap: _onTapHander,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Text('Explore'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text('History')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text('List')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Me')
              ),
            ],
          ),
    );
  }
}