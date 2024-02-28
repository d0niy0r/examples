
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lesson2Screen extends StatelessWidget {
  const Lesson2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("middle"),
        leading: Icon(CupertinoIcons.back),
        trailing: Icon(CupertinoIcons.add),
      ),
      child: Column(
        children: [
          CupertinoListTile(
            title: Text("name"),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          CupertinoListTile(
            backgroundColor: Colors.red,
            title: Text("name", style: TextStyle(color: Colors.red),),
            subtitle: Text("Azizbek"),
          ),
          Material(child: ListTile(
            title: Text("data"),
          )),
          Material(child: ListTile(
            title: Text("data"),
          )),
          Material(child: ListTile(
            title: Text("data"),
          )),
          Material(child: ListTile(
            title: Text("data"),
          )),
        ],
      ),

    );
  }
}
