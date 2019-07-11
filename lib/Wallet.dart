import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ListStories.dart';

class Wallet extends StatelessWidget {
  final instaPost = new Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      new Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 8.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          image: new NetworkImage(
                              "https://playjoor.com/assets/avatar/elliot.jpg"))),
                ),
                new Text(
                  "مهرداد امیدی",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            new IconButton(
              icon: new Icon(Icons.more_vert),
              onPressed: null,
            )
          ],
        ),
      ),
      new Row(
        children: <Widget>[
          new Expanded(
              child: Image.network(
            "http://hamyardeveloper.ir/wp-content/uploads/2019/03/89fcafda9f34fe88dcaf948a0c9fea49.jpg",
            fit: BoxFit.cover,
          ))
        ],
      ),
      new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Icon(FontAwesomeIcons.heart),
                new Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: new Icon(FontAwesomeIcons.comment),
                ),
                new Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: new Icon(FontAwesomeIcons.paperPlane)),
              ],
            ),
            new Icon(FontAwesomeIcons.bookmark)
          ],
        ),
      ),
      new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: new Text("3 نفر این پست را سندیده اند"),
      ),
      new Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: 40.0,
              height: 40.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: new NetworkImage(
                          "https://playjoor.com/assets/avatar/elliot.jpg"))),
            ),
            new Expanded(
                child: new TextField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: "نظر خود را بنویسید",
              ),
            ))
          ],
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 0) {
            return new SizedBox(
              child: ListStories(),
              height: deviceSize.height * 0.15,
            );
          } else {
            return instaPost;
          }
        });
  }
}
