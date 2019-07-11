import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text(
        'استوری ها',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Text(
            'نمایش همه ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          new Icon(Icons.arrow_right),
        ],
      )
    ],
  );

  final stories = new Expanded(
      child: new Padding(
    padding: EdgeInsets.only(top: 8.0),
    child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 11,
        itemBuilder: (context, index) {
          return new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              new Container(
                width: 40.0,
                height: 40.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://playjoor.com/assets/avatar/elliot.jpg"))),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
              ),
              index == 0
                  ? new Positioned(
                      child: new CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ))
                  : new Container()
            ],
          );
        }),
  ));

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[topText, stories],
      ),
    );
  }
}
