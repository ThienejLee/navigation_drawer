import 'package:flutter/material.dart';


class MainPageState extends State<MainPage>{
  var title = '';
  Drawer _buildDrawer(context){
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image.asset(
                    'images/profiles.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  new Text('Le Van Thien',
                  style: new TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  new Text('Mobile Developer',
                  style: new TextStyle(
                    color: Colors.blueAccent,
                  ),)
                ],
              ),
            ),
            decoration: new BoxDecoration(
                color: Colors.greenAccent
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.photo_album),
            title: new Text('Photos'),
            onTap: () {
              setState(() {
                this.title = 'This is Photos page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text('Notifications'),
            onTap: () {
              setState(() {
                this.title = 'This is Notification page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: () {
              setState(() {
                this.title = 'This is Settings page';
              });
              Navigator.pop(context);
            },
          ),
          new Divider(
            color: Colors.black45,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text('About us'),
            onTap: () {
              setState(() {
                this.title = 'This is About us page';
              });
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Privacy'),
            onTap: () {
              setState(() {
                this.title = 'This is Privacy page';
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer in Flutter"),
      ),
      body: new Center(
        child: new Text(this.title, style: new TextStyle(fontSize: 25.0),
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }
}



class MainPage extends StatefulWidget {
  // This widget is the root of your application.
  State<StatefulWidget> createState(){
    return new MainPageState();
  }
}
