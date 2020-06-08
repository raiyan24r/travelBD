import 'package:flutter/material.dart';
import '../../SizeConfig.dart';
import 'dart:convert';
import 'package:flushbar/flushbar.dart';
import 'package:dio/dio.dart';
import '../../utils.dart';

final Map<String, dynamic> regFormData = {
  "name": null,
  "email": null,
  "password": null,
  "phone": null,
  "district": null
};
bool returnCondition = false;
bool isRegisterPressed = false;

Future _register() async {
  Response response;
  Dio dio = new Dio();
  String regJson = jsonEncode(regFormData);

  response = await dio.post(
    baseURL + "register.php",
    data: regJson,
  );
  var jsonReturn = jsonDecode(response.data);

  if (jsonReturn["success"]) {
    returnCondition = true;
  }
}

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.black),
              height: h(100),
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
                        "Register",
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
                      width: w(100),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                          child: RegistrationForm(),
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
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({
    Key key,
  }) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        //a
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Register a new account",
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
          buildName(),
          SizedBox(height: 10),
          buildEmail(),
          SizedBox(height: 10),
          buildNumber(),
          SizedBox(height: 10),
          buildPassword(),
          SizedBox(height: 8),
          buildConfirmPassword(),
          SizedBox(height: 8),
          buildDistrict(),
          SizedBox(height: 10),
          registerButton(),
          SizedBox(height: 20),
          backSignIn(context),
        ],
      ),
    );
  }

  ButtonTheme backSignIn(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            side: BorderSide(color: Colors.grey[300])),
        color: Colors.white,
        child: Container(
          child: Row(
            children: <Widget>[
              Container(child: Icon(Icons.arrow_back_ios)),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      "Sign in".toUpperCase(),
                      style: TextStyle(
                          color: Colors.red[400],
                          fontSize: 22,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        splashColor: Colors.red[100],
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  ButtonTheme registerButton() {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)),
        color: Colors.red,
        textColor: Colors.white,
        child: isRegisterPressed
            ? Text(
                "REGISTERING...",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700),
              )
            : Text(
                "register".toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700),
              ),
        splashColor: Colors.red[900],
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            setState(() {
              isRegisterPressed = true;
            });
            //print("Process data");
            _formKey.currentState.save(); //onSaved is called!
            print(regFormData);
            await _register();
            print("registered");
            if (returnCondition) {
              Flushbar flushbar = Flushbar(
                  flushbarStyle: FlushbarStyle.FLOATING,
                  margin: EdgeInsets.all(8),
                  borderRadius: 15,
                  backgroundColor: Colors.greenAccent[700],
                  isDismissible: false,
                  duration: Duration(seconds: 3),
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.check,
                      color: Colors.green[900],
                      size: 40,
                    ),
                  ),
                  titleText: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "GREAT!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  messageText: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Registration Successful",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ));

              flushbar
                ..onStatusChanged = (FlushbarStatus status) {
                  if (status == FlushbarStatus.DISMISSED) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                }
                ..show(context);
            }
          }
        },
      ),
    );
  }

  TextFormField buildDistrict() {
    return TextFormField(
      onSaved: (String value) {
        regFormData['district'] = value.toString();
      },
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your present living district';
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
            Icons.add_location,
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
          hintText: 'Living District'),
    );
  }

  TextFormField buildConfirmPassword() {
    return TextFormField(
      onSaved: (String value) {
        regFormData['password'] = value.toString();
      },
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter a confirm password';
        } else if (value != _passwordFieldKey.currentState.value) {
          return 'Passwords do not match';
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
          hintText: 'Confirm Password'),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      key: _passwordFieldKey,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is empty';
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
            Icons.lock_outline,
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

  TextFormField buildNumber() {
    return TextFormField(
      onSaved: (String value) {
        regFormData['phone'] = value.toString();
      },
      validator: (value) {
        if (!RegExp(r"^(?:\+?88)?01[13-9]\d{8}$").hasMatch(value)) {
          return 'Please enter your phone number';
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
            Icons.phone,
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
          hintText: 'Phone Number'),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      onSaved: (String value) {
        regFormData['email'] = value.toString();
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
            Icons.email,
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

  TextFormField buildName() {
    return TextFormField(
      onSaved: (String value) {
        regFormData['name'] = value.toString();
      },
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your name';
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
          hintText: 'Name'),
    );
  }
}
