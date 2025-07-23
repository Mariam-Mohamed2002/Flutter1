import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<String> itemList = [
    "🛍️ Shopping",
    "📚 Reading",
    "🎵 Music",
    "🚴 Biking",
    "🎮 Gaming",
    "🎨 Drawing",
    "🏃 Running",
    "🍿 Movies"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal[100],
                child: Text(
                  itemList[index][0],
                  style: TextStyle(color: Colors.black),
                ),
              ),
              title: Text(itemList[index]),
              subtitle: Text("Tap to show message"),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
