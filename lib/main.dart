import 'package:flutter/material.dart';
import 'package:navigation_drawer/page1.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App drawer",
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // routes: <String , WidgetBuilder>{
      //   "/a":(BuildContext context) =>new Home("PAGE 1"),
      // },
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draw App"),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "s",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                backgroundColor: Colors.tealAccent,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text(
                    "s",
                  ),
                  backgroundColor: Colors.tealAccent,
                ),
              ],
              accountName: Text("Shaik saqlain"),
              accountEmail: Text("ShaikSaqlain@gmail.com")),
          ListTile(
              title: Text("List 1"),
              subtitle: Text("This is list 1"),
              trailing: Icon(Icons.book),
              onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Home("Page 1"))),
                  }),
          ListTile(
              title: Text("List 2"),
              subtitle: Text("This is list 2"),
              trailing: Icon(Icons.book),
              onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Home("Page 2"))),
                  }),
          Divider(),
          ListTile(
              title: Text("List 3"),
              subtitle: Text("This is list 2"),
              trailing: Icon(Icons.book),
              onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Home("Page 3"))),
                  }),
          ListTile(
            title: Text("Close"),
            subtitle: Text("Tap to close"),
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
            onLongPress: () => Navigator.of(context).pop(),
          ),
        ],
      )),
      body: Center(
        child: Text("hello world"),
      ),
    );
  }
}
