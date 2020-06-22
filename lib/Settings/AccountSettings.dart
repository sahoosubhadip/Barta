import 'package:barta/Settings/ChangeNumber.dart';
import 'package:barta/Settings/Privacy.dart';
import 'package:barta/Settings/TwoStepVerification.dart';
import 'package:barta/Settings/security.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xfff9f9f9),
        title: Text("Accounts",
          style:TextStyle(
              fontSize: 27.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              color: Colors.blueGrey),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blueGrey,),
            title: Text('Privacy',
              style:TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('Last seen, Dp ,Status, Bio, Blockes',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Privacy()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.security, color: Colors.blueGrey,),
            title: Text('Security',
              style:TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('Security Notification, Lock ',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => security()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user, color: Colors.blueGrey,),
            title: Text('Two-Step Verification',
              style:TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('Two-Step Verification, Code',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TwoStepVerification()),
              );

            },
          ),
          ListTile(
            leading: Icon(Icons.mobile_screen_share, color: Colors.blueGrey,),
            title: Text('Change Number',
              style:TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            subtitle: Text('Migrate Account info, Groups, & Settings',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic,
                //fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChangeNumber()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.delete_forever, color: Colors.blueGrey,),
            title: Text('Delete My Account  !',
              style:TextStyle(
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
            ),
            //subtitle: Text('FAQ, Contact us, Privacy policy'),
            onTap: () { },
          ),

        ],
      ),
    );
  }
}
