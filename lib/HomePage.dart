import 'package:First/Search.dart';
import 'package:First/Visit.dart';
import 'package:First/Wallet.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends State<HomeState> {
  int currentPage = 0;

  final List children = [
    new Search(),
    new Wallet(),
    new Visit(),
    new Search(),
    new Visit(),
  ];

  final appbar = new AppBar(
    centerTitle: true,
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
        onPressed: () {},
        color: Colors.grey,
        tooltip: 'Touch to open message inbox',
      )
    ],
  );

  onItemTapped(int index) {
    setState(() {
      currentPage = index;
      print(children[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Directionality(
          textDirection: TextDirection.rtl,
          child: new Scaffold(
              appBar: appbar,
              body: this.children[currentPage],
              bottomNavigationBar: new BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text(
                      'صفحه اصلی',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money),
                    title: Text('کیف پول',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.card_travel),
                    title: Text('سفرها',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shop),
                    title: Text('فروشگاه ها',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.hotel),
                    title: Text('اقامتگاه ها',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                ],
                currentIndex: currentPage,
                selectedItemColor: Colors.green[500],
                unselectedItemColor: Colors.grey,
                onTap: onItemTapped,
                showUnselectedLabels: true,
              )),
        ));
  }
}
