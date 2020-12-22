import 'package:flutter/material.dart';

void main() {
  runApp(GettingStartedApp());
}

class GettingStartedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Getting Started Title",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Meng First Flutter Project"),
          ),
          body: new HomeWidget(),
        ));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 200,
      itemBuilder: (context, index) {
        return Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Image.network(
                    "https://itcraftapps.com/wp-content/uploads/2019/03/Flutter-Cover.png"),
                new Container(
                  height: 8.0,
                ),
                new Text(
                  "Flutter List Example $index",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                new Divider(
                  color: Colors.green,
                )
              ],
            ));
      },
    );

    return new Center(
      child: new Text(
        "abc",
        style: new TextStyle(fontSize: 30.0),
      ),
    );
  }
}
