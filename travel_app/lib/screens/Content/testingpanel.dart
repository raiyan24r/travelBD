import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:travel_app/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../SizeConfig.dart';
import 'ClassesData.dart';
import 'DivisionPanels/SlidingPanelDivisions.dart';

class HomeMap extends StatefulWidget {
  HomeMap({Key key}) : super(key: key);

  @override
  _HomeMapState createState() => _HomeMapState();
}

class _HomeMapState extends State<HomeMap> {
  PanelController _pc = new PanelController();
  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      print('Settings');
    } else if (choice == Constants.Subscribe) {
      print('Subscribe');
    } else if (choice == Constants.SignOut) {
      print('SignOut');
    }
  }

  void updateIndex(int index) {
    setState(() {
      print(_pc.isAttached.toString());
      divIndex = index;
      _pc.open();
    });
  }

  var ctgDiv = Division();
  var dhakaDiv = Division();
  var sylhetDiv = Division();
  var khulnaDiv = Division();
  var rangpurDiv = Division();
  var rajshahiDiv = Division();
  var mymensinghDiv = Division();
  var barishalDiv = Division();
  int divIndex = 2;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0Xffb22020),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          title: Center(
            child: Text(w(100).toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center),
          ),
        ),
        body: SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          backdropEnabled: true,
          minHeight: h(1),
          maxHeight: (w(95)*1.30)*0.90,
          controller: _pc,
           panel: Center(
                    child: divListPanel[divIndex],
                  ),
          body:Center(
            
            child: Padding(
              padding: const EdgeInsets.only(bottom:100),
              child: _body(),
            )),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0Xffb22020),
                ),
                child: Text(
                  'your name\n40% complete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xfffff2f2), //fce8e8  //fff2f2
          elevation: 50,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Color(0Xffb22020),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.directions_boat),
                color: Color(0Xffb22020),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.wrap_text),
                color: Color(0Xffb22020),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.location_on),
                color: Color(0Xffb22020),
                onPressed: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0Xffb22020),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _body() {
    return Container(
      width: w(95),

      height: w(96.5) * 1.30,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -1.0,
            blurRadius: 1.0,
          ),
        ],
      ),
      //color: Colors.red,
      child: Stack(
        children: <Widget>[
          Center(
            child: SvgPicture.asset(
              'assets/images/BDMapv2.svg',
              width: w(95),
              height: w(95) * 1.30,
            ),
          ),
          // ANCHOR Ctg
          Positioned(
            bottom: (w(95) * 1.30) *0.2,
            right: w(-2),
            child: FlatButton(
              onPressed: () => {updateIndex(2)},
              child: Column(children: <Widget>[
                Text(
                  "CHITTAGONG",
                  style: TextStyle(
                      fontSize: h(100) * 0.02,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue[900],
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 2),
                      child: Text(
                        "${ctgDiv.visitedDistricts}/8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h(100) *0.02,
                        ),
                      ),
                    ))
              ]),
            ),
          ),
          //  ANCHOR Barishal
          Positioned(
            //Barishal
            bottom: (w(95)*1.30) *0.24,
            right: w(95)*0.35,
            child: FlatButton(
              onPressed: () => {updateIndex(3)},
              child: Column(
                children: <Widget>[
                  Text(
                    "BARISHAL",
                    style: TextStyle(
                        fontSize: h(100)*.02,
                        color: Colors.orange[900],
                        fontWeight: FontWeight.w900),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 2),
                      child: Text(
                        "${barishalDiv.visitedDistricts}/8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: h(100)*0.02,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ANCHOR Khulna
          Positioned(
            //Khulna
            bottom: (w(95)*1.30)*0.3,
            left: w(95)*0.17,
            child: FlatButton(
              onPressed: () => {updateIndex(4)},
              child: Column(children: <Widget>[
                Text(
                  "KHULNA",
                  style: TextStyle(
                      fontSize: h(100)*0.02,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 2),
                    child: Text(
                      "${khulnaDiv.visitedDistricts}/8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h(100)*0.02,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // ANCHOR Dhaka
          Positioned(
            //Dhaka
            bottom: (w(95)*1.30) *0.45,
            left: w(95)*0.35,
            child: FlatButton(
              onPressed: () => {
                updateIndex(1),
              },
              child: Column(children: <Widget>[
                Text(
                  "DHAKA",
                  style: TextStyle(
                      fontSize: h(100)*0.02,
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.pink[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 2),
                    child: Text(
                      "${dhakaDiv.visitedDistricts}/8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h(100)*0.02,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // ANCHOR Mymensingh
          Positioned(
            // Mymensingh
            top: (w(95)*1.30) *0.25,
            left: w(95)*0.32,
            child: FlatButton(
              onPressed: () => {updateIndex(7)},
              child: Column(children: <Widget>[
                Text(
                  "MYMENSINGH",
                  style: TextStyle(
                      fontSize: h(100)*0.02,
                      color: Colors.red[900],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.red[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 2),
                    child: Text(
                      "${mymensinghDiv.visitedDistricts}/3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h(100)*0.020,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // ANCHOR Sylhet
          Positioned(
            //Sylhet

            top: (w(95)*1.30)*0.28,
            right: w(95)*0.1,
            child: FlatButton(
              onPressed: () => {updateIndex(0)},
              child: Column(children: <Widget>[
                Text(
                  "SYLHET",
                  style: TextStyle(
                      fontSize: h(100)*0.02,
                      color: Colors.deepOrange[900],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 2),
                    child: Text(
                      "${sylhetDiv.visitedDistricts}/3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h(100)*0.020,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // ANCHOR Rangpur
          Positioned(
            //Rangpur
            top: (w(95) * 1.30) * 0.12,
            left: w(95) * .12,
            child: FlatButton(
              onPressed: () => {updateIndex(6)},
              child: Column(children: <Widget>[
                Text(
                  "RANGPUR",
                  style: TextStyle(
                      fontSize: h(100) * .02,
                      color: Colors.lime[800],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.lime[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 2),
                    child: Text(
                      "${rangpurDiv.visitedDistricts}/3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h(100)*0.02,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          // ANCHOR Rajshahi
          Positioned(
            //Rajshahi
            top: (w(95)*1.30)*0.3,
            left: w(95)*0.08,
            child: FlatButton(
              onPressed: () => {updateIndex(5)},
              child: Column(children: <Widget>[
                Text(
                  "RAJSHAHI",
                  style: TextStyle(
                      fontSize: h(100)*0.02,
                      color: Colors.lightBlue[800],
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 2),
                    child: Text(
                      "${rajshahiDiv.visitedDistricts}/3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: h(100)*0.02,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
