import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double myTextSize = 30;
    final double myIconSize = 40;
    final TextStyle myTextStyle = TextStyle(color: Colors.grey, fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
          title: Text(
            "Favourite",
            style: myTextStyle,
          ),
          icon: Icon(
            Icons.favorite,
            size: myIconSize,
            color: Colors.red,
          ),
        ),
        MyCard(
          title: Text(
            "Alarm",
            style: myTextStyle,
          ),
          icon: Icon(
            Icons.alarm,
            size: myIconSize,
            color: Colors.blue,
          ),
        ),
        MyCard(
          title: Text(
            "Airport Shuttle",
            style: myTextStyle,
          ),
          icon: Icon(
            Icons.airport_shuttle,
            size: myIconSize,
            color: Colors.yellow,
          ),
        ),
        MyCard(
          title: Text(
            "Done",
            style: myTextStyle,
          ),
          icon: Icon(
            Icons.done,
            size: myIconSize,
            color: Colors.green,
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 2),
        child: Center(
          child: SingleChildScrollView(child: column,),
        ),
      ),
    );
  }
}


class MyCard extends StatelessWidget {

  final Widget title, icon;

  MyCard({
   this.icon,
   this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
               this.title, this.icon
            ],
          ),
        ),
      ),
    );
  }
}