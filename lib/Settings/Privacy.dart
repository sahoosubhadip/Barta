import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          backgroundColor: Color(0xfff9f9f9),
          title: Text(
            "Privacy",
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
          ListTile(
            title: Text(
              'who can see my personal info',
              style: TextStyle(
                  fontSize: 18.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'If you dont share your last seen, '
              "you won't be able to see other's last seen",
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'lastseen',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'nobody',
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
            title: Text(
              'profile photos',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'mycontacts',
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
            title: Text(
              'about',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'No body',
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
            title: Text(
              'status',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'mycontacts',
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
            title: Text(
              'read receipts',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'if turned off, you wont send or receive read recipts.Read recipts are always sent for group chat   ,',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
//fontWeight: FontWeight.bold,
// color: Colors.black54
              ),
            ),
            onTap: () {},
            trailing: Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.blueGrey,
              value: false,
              onChanged: (value) {},
            ),
          ),
//          ListTile(
//            title: Text(
//              'Groups',
//              style:
//              TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
//            ),
//          ),
          ListTile(
            title: Text(
              'group',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'my contacts',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
//fontWeight: FontWeight.bold,
// color: Colors.black54
              ),
            ),
//            onTap: () {
//              openAudioPicker();
//            },
//          ),
//          _absolutePathOfAudio == null
//              ? Container()
//              : Text(
//            "Absolute path",
//            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          ListTile(
            title: Text(
              'live location',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'none',
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
            title: Text(
              'blocked contacts',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              '0',
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
            title: Text(
              'fingerprint lock',
              style: TextStyle(
                  fontSize: 17.5,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'disabled',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
//fontWeight: FontWeight.bold,
// color: Colors.black54
              ),
            ),
            onTap: () {},
          ),
        ]));
  }
}
