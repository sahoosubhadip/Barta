import 'package:flutter/material.dart';

class TwoStepVerification extends StatefulWidget {
  @override
  _TwoStepVerificationState createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          backgroundColor: Color(0xfff9f9f9),
          title: Text("Two-step Verification",
            style:TextStyle(
                fontSize: 24.0,
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
          Expanded(
              child: RichText(
                  text: TextSpan(
                      text: "for added security, enable two step verifiacation",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                      children: [

                        TextSpan(
                            text: " Encryption , which means BARTA and third parties can't read ,seen or listen to them. ",
                            style: TextStyle(color: Colors.green,fontSize:17, fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600)
                        ),
                      ]))

          ),
          //  button(context)]
          button(context),]
        ));
  }
}






  image() {
    return Container(
      margin: EdgeInsets.only(top: 2, left: 2),
      child: Image.asset(
        "assets/tSV2.jpg",

        fit: BoxFit.fill,

        width: 250,
      ),
    );
  }

  button(context) {
    return Padding(padding:
    EdgeInsets.only(bottom: 200),
      child: RaisedButton(

          child: Text("Next"),

          onPressed: () {}
      ),);
  }
