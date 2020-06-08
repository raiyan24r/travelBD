import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flushbar/flushbar.dart';
import 'package:dio/dio.dart';
import '../../utils.dart';

final Map<String, dynamic> signInFormData = {
  "email": null,
  "password": null,
};
bool returnConditionS = false;
bool isSignInPressed = false;

Future _signIn() async {
  Response response;
  Dio dio = new Dio();
  String regJson = jsonEncode(signInFormData);

  response = await dio.post(
    baseURL + "login.php",
    data: regJson,
  );
  var jsonReturn = jsonDecode(response.data);
  print(jsonReturn.toString());
  if (jsonReturn["success"]) {
    returnConditionS = true;
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _signInformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return new Scaffold(
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.black),
              height: size.height,
              //color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 20,
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFB00020),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w200,
                            color: Color(0xFFB00020)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              //top: 180,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 35.0, left: 0, right: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xB3B00020),
                              blurRadius:
                                  4.0, // has the effect of softening the shadow
                              spreadRadius: 1.0,
                              offset: Offset(0,
                                  -7) // has the effect of extending the shadow
                              )
                        ],
                        color: Colors.white,
                        borderRadius: new BorderRadius.vertical(
                          top: new Radius.circular(
                              90.0), //login container radius
                          //bottom: new Radius.circular(20.0),
                        ),
                      ),
                      width: size.width,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                          child: Form(
                            key: _signInformKey,
                            child: Column(
                              //a
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Login to your account",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.account_box,
                                      color: Colors.red[800],
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                _buildEmail(),
                                SizedBox(height: 10),
                                _buildPassword(),
                                SizedBox(height: 8),
                                _buildSignInButton(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Don't have an account?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "Raleway",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FlatButton(
                                      color: Colors.white38,
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/register');
                                      },
                                      child: Text(
                                        'Register',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.red[700],
                                            fontSize: 18,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Icon(Icons.image, size: 120),
                                Text("Logo"),
                                SizedBox(height: 32),
                                _buildSkipButton(context),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonTheme _buildSkipButton(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            side: BorderSide(color: Colors.grey[300])),
        color: Colors.white,
        child: Text(
          "skip".toUpperCase(),
          style: TextStyle(
              color: Colors.red[400],
              fontSize: 22,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w600),
        ),
        splashColor: Colors.red[100],
        onPressed: () {
          Navigator.popAndPushNamed(context, '/home');
        },
      ),
    );
  }

  ButtonTheme _buildSignInButton() {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)),
        color: Colors.red,
        textColor: Colors.white,
        child: isSignInPressed
            ? Text(
                "signing you in...".toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700),
              )
            : Text(
                "sign in".toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700),
              ),
        splashColor: Colors.red[900],
        onPressed: () async {
          setState(() {
            isSignInPressed = true;
          });
          if (_signInformKey.currentState.validate()) {
            _signInformKey.currentState.save();
            print(signInFormData);
            await _signIn();
            print(999);
            print(returnConditionS);
            if (returnConditionS) {
              Navigator.of(context).pushReplacementNamed('/home');
            }
            else
            {
              setState(() {
                isSignInPressed = false;
                
              });
              Flushbar(
                  flushbarStyle: FlushbarStyle.FLOATING,
                  margin: EdgeInsets.all(8),
                  borderRadius: 15,
                  backgroundColor: Colors.red,
                  isDismissible: false,
                  duration: Duration(seconds: 4),
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.warning,
                      color: Colors.red[100],
                      size: 40,
                    ),
                  ),
                  titleText: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "SORRY !",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  messageText: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "EMAIL OR PASSWORD DID NOT MATCH TRY AGAIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ))..show(context);



            }
          }
        },
      ),
    );
  }

  TextFormField _buildPassword() {
    return TextFormField(
      onSaved: (String value) {
        signInFormData['password'] = value.toString();
      },
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter a password';
        }
        return null;
      },
      obscureText: true,
      cursorColor: Colors.black87,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 3.0),
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
          ),
          hoverColor: Colors.red,
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.black87,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
            //borderSide: const BorderSide(),
          ),
          hintStyle: TextStyle(color: Colors.black54, fontFamily: "Roboto"),
          filled: true,
          fillColor: Colors.grey[100],
          hintText: 'Password'),
    );
  }

  TextFormField _buildEmail() {
    return TextFormField(
      onSaved: (String value) {
        signInFormData['email'] = value.toString();
      },
      validator: (String value) {
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'This is not a valid email';
        }
        return null;
      },
      cursorColor: Colors.black87,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 3.0),
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
          ),
          hoverColor: Colors.red,
          prefixIcon: Icon(
            Icons.person,
            color: Colors.black87,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
            //borderSide: const BorderSide(),
          ),
          hintStyle: TextStyle(color: Colors.black54, fontFamily: "Roboto"),
          filled: true,
          fillColor: Colors.grey[100],
          hintText: 'Email'),
    );
  }
}
