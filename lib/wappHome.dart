import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wapp/call_screen.dart';
import 'package:flutter_wapp/camera_screen.dart';
import 'package:flutter_wapp/chat_screen.dart';
import 'package:flutter_wapp/status_screen.dart';

class wappHome extends StatefulWidget {
  @override
  _wappHomeState createState() => _wappHomeState();
}

class _wappHomeState extends State<wappHome>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController= new TabController(vsync: this,initialIndex: 1,length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon( Icons.camera_alt)),
            new Tab(text: 'Chats'),
            new Tab
              (text: 'Status',
            ),
            new Tab
              (text: 'Calls',
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search), new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ) ,
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
    children: <Widget>[
      new CameraScreen(),
      new ChatScreen(),
      new StatusScreen(),
      new CallScreen(),
    ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
            Icons.message,
        color: Colors.white,
        ),
        onPressed: ()=>print('Open Chats'),
      ),
    );
  }
}
