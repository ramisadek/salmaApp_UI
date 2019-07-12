import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _buildListItem(BuildContext context,DocumentSnapshot doc){
    return ListTile(
      title: Row(
        children: <Widget>[
          Text(doc['name'])
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app"),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('kittens').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) return Text("Loading..");
          return ListView.builder(
            itemBuilder: (context, index) => _buildListItem(context,snapshot.data.documents[index]),
            itemExtent: 40,
            itemCount: snapshot.data.documents.length,
          );
        }
      )
    );
  }
}
