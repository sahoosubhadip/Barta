import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChangeNumber extends StatefulWidget {
  @override
  _ChangeNumberState createState() => _ChangeNumberState();
}

class _ChangeNumberState extends State<ChangeNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          backgroundColor: Color(0xfff9f9f9),
          title: Text("Change number",
            style:TextStyle(
                fontSize: 27.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Colors.blueGrey),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(children: <Widget>[
          image(),
          // button(context),
          ListTile(
            title: Text(
              'changing your phone number will migrate your account info, groups & settings. ',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.red),
            ),
//            subtitle: Text(
//              'and thied parties cant read or listen to them  ,',
//              style: TextStyle(
//                fontSize: 15.0,
//                fontStyle: FontStyle.italic,
////fontWeight: FontWeight.bold,
//// color: Colors.black54
//              ),
            // ),
//            onTap: () {},
//      trailing: Switch(
//        activeColor: Colors.green,
//        inactiveThumbColor: Colors.grey,
//        value: false,
//        onChanged: (value) {},
//      ),
          ),
          ListTile(
            title: Text(
              'Before proceeding ,please confirm that you are able to receive SMS or calls at your new number',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.blueGrey),
            ),

          ),
          ListTile(
            title: Text(
              'If you have both a new phone & a new number, first change your number on your old phone.',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),

          ),
          button(context)
        ]) );
  }
}


image() {
  return Container(

    margin: EdgeInsets.only(top: 10,left: 30),
    child: Image.asset(
      "assets/changeNo.jpg",
      fit: BoxFit.fill,
      width: 250,
    ),
  );
}
button(context) {
  return Padding(padding:
  EdgeInsets.only(bottom: 20),
    child: RaisedButton(
        color: Colors.green,
        child: Text("Next"),

        onPressed: () {}
    ),);
}
