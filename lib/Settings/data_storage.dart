import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data_storage extends StatefulWidget {
  @override
  _data_storageState createState() => _data_storageState();
}

class _data_storageState extends State<data_storage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          backgroundColor: Color(0xfff9f9f9),
          title: Text(
            "Data and Storage usage",
            style: TextStyle(
                fontSize: 27.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Colors.blueGrey),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(children: <Widget>[
          // Card(child: ListTile(title: Text('One-line ListTile'))),
          ListTile(
            title: Text(
              'usage',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.green),
            ),
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'Network usage',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              '00GB',
              style: (TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic)),
            ),
          ),
          ListTile(
            title: Text(
              'storage usage',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'calculating',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
//fontWeight: FontWeight.bold,
// color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'media auto download',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'voice message are always auto-downloaded for the best communication experince',
              style: (TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
            ),
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'when using mobile data',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'all media',
              style: (TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
            ),
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'when connected on wifi',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'all media',
              style: (TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
            ),
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'when roaming',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'no media',
              style: (TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
            ),
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'call settings',
              style: (TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.green)),
            ),
          ),
          ListTile(
            // leading: FlutterLogo(),
            title: Text(
              'low data usage',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'reduce the data use in a call',
              style: (TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
            ),
            onTap: () {},
            trailing: Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.blueGrey,
              value: false,
              onChanged: (value) {},
            ),
          ),
        ]));
  }
}
