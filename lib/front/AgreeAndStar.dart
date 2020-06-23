import 'package:barta/frontpage_animation/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import '../ServerAPI.dart';

class AgreeAndStart extends StatefulWidget {
  @override
  _AgreeAndStartState createState() => _AgreeAndStartState();
}

class _AgreeAndStartState extends State<AgreeAndStart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    register();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
       body: SingleChildScrollView(
          child: Column(
             children: <Widget>[
               text1(),
               pic(),
               SizedBox(
                 height: 10,
               ),
               text2(),
               SizedBox(
                 height: 20,
               ),
               text3(),
               SizedBox(
                 height: 20,
               ),
               text4(),
               SizedBox(
                 height: 10,
               ),
               text5(),
               SizedBox(
                 height: 20,
               ),
               text6(),
               SizedBox(
                 height: 16,
               ),
               text7(),
               SizedBox(
                 height: 15,
               ),
               text8(),
               SizedBox(
                 height: 20,
               ),
               button(context),
               SizedBox(
                 height: 20,
               ),
             ],
           )
       ),
    );
  }
}

text1() {
  return Padding(
    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
    child: Center(
      child: Text(
        "Welcome to Barta",
        style: TextStyle(
          fontSize: 25,
          color: Colors.blueGrey,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}

pic() {
  return Container(
    margin: EdgeInsets.only(top: 0),
    child: Image.asset(
      "assets/trail2.png",
      fit: BoxFit.fill,
      width: 150,
    ),
  );
}

text2() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
            text:
                "  Read our Privacy Policy Tap 'AGREE AND CONTINUE' to accept the Terms of Service . . .",
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                  text: " ",
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold)),
            ]),
      ),
    ),
  );
}

text3() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
          text: "Privacy and security is in our DNA",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

text4() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
          text:
              "   which is why we have end-to-end encryption. When end-to-end encrypted, your messages, photos, videos, voice messages, documents, status updates and calls are secured from falling into the wrong hands",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}

text5() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
          text:
              "  Barta,We respects your privacy and is committed to protecting it through this 'Privacy Policy'.  This Privacy Policy is part of, and governed by, our Terms of Service.  ",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}

text6() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
          text:
              "  We collect information from and about users of our Barta Application Software: ",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}

text7() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
          text: "( i )  directly from you when you provide it to us ; ",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
      ),
    ),
  );
}

text8() {
  return Center(
    child: Container(
      child: RichText(
        text: TextSpan(
          text:
              "    ( ii )   automatically when you use Barta Application Software,"
              "including when Barta Customer Visitors engage in a communication using the Barta Application Software through Barta Customer websites ",
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
      ),
    ),
  );
}

button(context) {
  return RaisedButton(
      child: Text(
        "AGREE AND CONTINUE",
        style: TextStyle(
            color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        );
      });
}

register() async {
  final result = await ServerAPI().register(
      {'mobile_no': 'mobile_no', 'password': 'password', 'name': 'Subhadip'});
  print(result);
}
