import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Directionality(
          textDirection: TextDirection.rtl,
          child: new Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[100],
              leading: new IconButton(
                icon: Icon(Icons.menu),
                onPressed: null,
                tooltip: 'Touch to open menu',
              ),
              title: new Text(
                'دهکده هوشمند',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              actions: <Widget>[
                new IconButton(
                  icon: Icon(Icons.message),
                  onPressed: null,
                  tooltip: 'Touch to open message inbox',
                )
              ],
            ),
            body: new Center(
              child: new Text(
                'محتوای برنامه',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('صفحه اصلی',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money),
                  title: Text('کیف پول',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel),
                  title: Text('سفرها',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                ),
                 BottomNavigationBarItem(
                  icon: Icon(Icons.shop),
                  title: Text('فروشگاه ها',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                ),
                 BottomNavigationBarItem(
                  icon: Icon(Icons.hotel),
                  title: Text('اقامتگاه ها',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                ),
              ],
              currentIndex: 0,
              selectedItemColor: Colors.green[500],
              unselectedItemColor: Colors.grey,
              onTap: null,
              showUnselectedLabels: true,
            ),
          ),
        ));
        
  }
  
}
