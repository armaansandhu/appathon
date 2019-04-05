import 'package:flutter/material.dart';

class PeopleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peoples"),
      ),
      body: GridView.builder(
          itemCount: 6,
          gridDelegate:  new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int i){
            return card('Item $i');
          }),
    );
  }

  Widget card(String s){
    return Container(
      height: 200,
      width: 200,
      child: Card(
        child: cardContent(s),
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
          Text(s[0].toUpperCase() + s.substring(1),style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
