import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class security extends StatefulWidget {
  @override
  _securityState createState() => _securityState();
}

class _securityState extends State<security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xfff9f9f9),
        title: Text("Security",
          style:TextStyle(
              fontSize: 27.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              color: Colors.blueGrey),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          image(),
          ListTile(
            title: Text(
              '"your messages and calls are secored with end-to-end encryption ,which means barta and thied parties cant read or listen to them" ',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  color: Colors.red),
            ),

     ),
        ListTile(
            title: Text(
              'show security notifications',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54),
            ),
            subtitle: Text(
              'Turn on this seting to receive notifications when a contacts has changed.your messages and calls are encrypted regardless of this settings.  ,',
              style: TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,

              ),
            ),onTap: () {},
          trailing: Switch(
            activeColor: Colors.green,
            inactiveThumbColor: Colors.blueGrey,
            value: false,
            onChanged: (value) {},
          ),
        ),

    ]),);

  }}

  image() {
    return Container(
     margin: EdgeInsets.only(top: 20,left: 15),
      child: Image.asset(
        "assets/security.png",
        fit: BoxFit.fill,
        width: 230,
      ),
    );
  }



