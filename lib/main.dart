import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(drawer: Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.purple,
                    Colors.purpleAccent
                  ])
              ),
              child: Text('Music')),

        ],
      ),
    ),
      appBar: AppBar(
          title: Text('Music'),
          centerTitle: true,
          backgroundColor: Colors.purple),
      body: const Center(
        child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1568861368385-3534aca5cf41?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHB1cnBsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.purple,
      ),
    ),
  ));


}




abstract class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.text,this.icon,this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom:BorderSide(color:Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.purpleAccent,
          onTap: () {},
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text, style: TextStyle(
                          fontSize: 15.0
                      ),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}














