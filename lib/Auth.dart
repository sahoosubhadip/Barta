import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _smsVerificationCode;
  __registerUser(String email, String password, BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+917584888003',
        timeout: Duration(seconds: 5),
        verificationCompleted: (authCredential) =>
            _verificationComplete(authCredential, context),
        verificationFailed: (authException) =>
            _verificationFailed(authException, context),
        codeAutoRetrievalTimeout: (verificationId) =>
            _codeAutoRetrievalTimeout(verificationId),
        codeSent: (verificationId, [code]) =>
            _smsCodeSent(verificationId, [code]),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  /// will get an AuthCredential object that will help with logging into Firebase.
  _verificationComplete(AuthCredential authCredential, BuildContext context) {
    print('_verificationComplete');
    FirebaseAuth.instance
        .signInWithCredential(authCredential)
        .then((authResult) {
      final snackBar =
          SnackBar(content: Text("Success!!! UUID is: " + authResult.user.uid));
      Scaffold.of(context).showSnackBar(snackBar);
    });
  }

  _smsCodeSent(String verificationId, List<int> code) {
    print("OTP Sent");
    // set the verification code so that we can use it to log the user in
    _smsVerificationCode = verificationId;
  }

  _verificationFailed(AuthException authException, BuildContext context) {
    print('_verificationFailed');
    print(authException.message.toString());
    final snackBar = SnackBar(
        content:
            Text("Exception!! message:" + authException.message.toString()));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  _codeAutoRetrievalTimeout(String verificationId) {
    print('_codeAutoRetrievalTimeout');
    // set the verification code so that we can use it to log the user in
    _smsVerificationCode = verificationId;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auth"),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () async {
            await __registerUser('partha.mcr@gmail.com', '7584888003', context);
          },
          child: Text('Register'),
        ),
      ),
    );
  }
}
