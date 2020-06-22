import 'package:barta/Settings/AccountSettings.dart';
import 'package:barta/Settings/ChatSettings.dart';
import 'package:barta/Settings/NotificationSettings.dart';
import 'package:barta/Settings/Profile.dart';
import 'package:barta/Settings/data_storage.dart';
import 'package:barta/frontpage_animation/ui/views/home_view.dart';
import 'package:barta/screen/Help.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'screen/Groups.dart';
import 'screen/call_screen.dart';
import 'screen/map.dart';
import 'screen/chat_screen.dart';
import 'screen/status_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class wappHome extends StatefulWidget {
  @override
  _wappHomeState createState() => _wappHomeState();
}

class _wappHomeState extends State<wappHome>
    with SingleTickerProviderStateMixin {

  GlobalKey _bottomNavigationKey = GlobalKey();

  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  int pageIndex = 0;
  final _pageChooser = [
    ChatScreen(),
    Groups(),
    StatusScreen(),
    CallScreen(),
    Map(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

        appBar: AppBar(
          leading: IconButton(
            icon:Icon (Icons.menu) ,color: Colors.blueGrey,
              //key: _scaffoldKey
              onPressed: (){
        _scaffoldKey.currentState.openDrawer();
        },
          ),
          // backgroundColor: Colors.white,
          backgroundColor: Color(0xfff9f9f9),
          title: GestureDetector(
            child: Text(
              "Barta ",
              style: TextStyle(
                  fontSize: 27.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help()),
              );
            },
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(33),
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Color(0xfff9f9f9), width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Search here",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontFamily: 'OpenSans'),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.blueGrey,
                          onPressed: () {

                          },
                          // size: 6 * SizeConfig.imageSizeMultiplier,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        drawer:





        Drawer(

      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/trail2.png"),
                        fit: BoxFit.cover)),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.person_pin,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        'Subhadip sahoo',
                        style: TextStyle(
                            fontSize: 20,
                            //fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      subtitle: Text(
                        '+91 8145489679',
                        style: TextStyle(
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
                              builder: (context) => Profile()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(children: [
              ListTile(
                leading: Icon(
                  Icons.person_pin,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Subhadip sahoo',
                  style: TextStyle(
                      fontSize: 20,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                subtitle: Text(
                  '+91 8145489679',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                    // color: Colors.black54
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Friends',
                  style: TextStyle(
                      fontSize: 15,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => AccountSettings()),
//                );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.vpn_key,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Accounts & Privacy',
                  style: TextStyle(
                      fontSize: 15,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettings()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Chats',
                  style: TextStyle(
                      fontSize: 15,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatSettings()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications_active,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: 15,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationSettings()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.data_usage,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Data & Storage Usage',
                  style: TextStyle(
                      fontSize: 15,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => data_storage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Share me',
                  style: TextStyle(
                      fontSize: 15,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                subtitle: Text(
                  'say More & do More  . . .',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                    // color: Colors.black54
                  ),
                ),
                onTap: () {
                  Share.share('Hello');
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => InviteAFriend(context)),
//                );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Logout !',
                  style: TextStyle(
                      fontSize: 17,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
              ),
            ]),
          )
        ],
      ),
    ),
        body: Container(
          child: _pageChooser[pageIndex],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          // color:  Color(0xff201F23),
          color: Colors.white,
          //0XFFc7417b
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white12,
          // Color(0xfff9f9f9),
          height: 50,
          items: <Widget>[
            Icon(Icons.forum, color: Colors.blueGrey, size: 25),
            Icon(Icons.group, color: Colors.green, size: 25),
            Icon(Icons.data_usage, color: Colors.blueAccent, size: 25),
            Icon(Icons.call, color: Colors.purple, size: 25),
            Icon(Icons.location_on, color: Colors.red, size: 25),
          ],
          animationDuration: Duration(milliseconds: 600),
          //index: pageIndex,
          onTap: (index) {
            debugPrint("Current Index is $index");
            setState(() {
              pageIndex = index;
            });
          },
        ));
  }
}

//search(context) {
//  return Drawer(
//
//    child: Column(
//      children: [
//        Expanded(
//          flex: 1,
//          child: Container(
//            width: MediaQuery.of(context).size.width * 0.85,
//            child: DrawerHeader(
//              decoration: BoxDecoration(
//
//                  image: DecorationImage(
//                      image: AssetImage("assets/trail2.png"),
//                      fit: BoxFit.cover)),
//              child: ListView(
//                children: <Widget>[
//                  ListTile(
//                    leading: Icon(
//                      Icons.person_pin,
//                      color: Colors.blueGrey,
//                    ),
//                    title: Text(
//                      'Subhadip sahoo',
//                      style: TextStyle(
//                          fontSize: 20,
//                          //fontStyle: FontStyle.italic,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black54),
//                    ),
//                    subtitle: Text(
//                      '+91 8145489679',
//                      style: TextStyle(
//                        fontSize: 15.0,
//                        fontStyle: FontStyle.italic,
//                        //fontWeight: FontWeight.bold,
//                        // color: Colors.black54
//                      ),
//                    ),
//                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (context) => Profile()),
//                      );
//                    },
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//        Expanded(
//          flex: 2,
//          child: ListView(children: [
//            ListTile(
//              leading: Icon(
//                Icons.person_pin,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Subhadip sahoo',
//                style: TextStyle(
//                    fontSize: 20,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              subtitle: Text(
//                '+91 8145489679',
//                style: TextStyle(
//                  fontSize: 15.0,
//                  fontStyle: FontStyle.italic,
//                  //fontWeight: FontWeight.bold,
//                  // color: Colors.black54
//                ),
//              ),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => Profile()),
//                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.people,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Friends',
//                style: TextStyle(
//                    fontSize: 15,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              onTap: () {
////                Navigator.push(
////                  context,
////                  MaterialPageRoute(builder: (context) => AccountSettings()),
////                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.vpn_key,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Accounts & Privacy',
//                style: TextStyle(
//                    fontSize: 15,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => AccountSettings()),
//                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.chat,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Chats',
//                style: TextStyle(
//                    fontSize: 15,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => ChatSettings()),
//                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.notifications_active,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Notifications',
//                style: TextStyle(
//                    fontSize: 15,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => NotificationSettings()),
//                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.data_usage,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Data & Storage Usage',
//                style: TextStyle(
//                    fontSize: 15,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => data_storage()),
//                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.share,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Share me',
//                style: TextStyle(
//                    fontSize: 15,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              subtitle: Text(
//                'say More & do More  . . .',
//                style: TextStyle(
//                  fontSize: 15.0,
//                  fontStyle: FontStyle.italic,
//                  //fontWeight: FontWeight.bold,
//                  // color: Colors.black54
//                ),
//              ),
//              onTap: () {
//                Share.share('Hello');
////                Navigator.push(
////                  context,
////                  MaterialPageRoute(
////                      builder: (context) => InviteAFriend(context)),
////                );
//              },
//            ),
//            ListTile(
//              leading: Icon(
//                Icons.help_outline,
//                color: Colors.blueGrey,
//              ),
//              title: Text(
//                'Logout !',
//                style: TextStyle(
//                    fontSize: 17,
//                    //fontStyle: FontStyle.italic,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black54),
//              ),
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => HomeView()),
//                );
//              },
//            ),
//          ]),
//        )
//      ],
//    ),
//  );
//}
