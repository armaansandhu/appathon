import 'package:appathon/ui/people/peoplelist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainUI()
    );
  }

  Widget mainUI(){

    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        card(context,"people"),
//        card("reminder"),
//        card("important"),
//        card("medication"),
//        card("events"),
//        card("help")
      ],
    );
  }

  Widget card(BuildContext context,String s){
    return Container(
      height: 200,
      width: 200,
      child: InkWell(
        onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => PeopleList())),
        child: Card(
          child: cardContent(s),
        ),
      ),
    );
  }

  Widget cardContent(String s){
    return Center(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage("https://png.pngtree.com/svg/20150801/6f376f1d9e.png"),
            height: 100,
            width: 100,
          ),
          SizedBox(height: 20,),
          Text(s[0].toUpperCase() + s.substring(1),style: Theme.of(context).textTheme.title,)
        ],
      ),
    );
  }
}
