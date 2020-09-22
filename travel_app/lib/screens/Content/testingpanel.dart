import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:travel_app/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../SizeConfig.dart';
import 'ClassesData.dart';
import 'DivisionPanels/SlidingPanelDivisions.dart';

int divIndex = 2;

var ctgDIV = Division(11);
var dhakaDIV = Division(13);
var sylhetDIV = Division(4);
var khulnaDIV = Division(10);

var rangpurDIV = Division(8);
var rajshahiDIV = Division(8);
var mymensinghDIV = Division(4);
var barishalDIV = Division(6);

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

  int widthThreshold = 470;
  void updateIndex(int index) {
    setState(() {
      print(_pc.isAttached.toString());
      divIndex = index;
      _pc.open();
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0Xffb22020),
          title: Text("Jajabor",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center),
        ),
        body: SlidingUpPanel(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          backdropEnabled: true,
          minHeight: h(1),
          maxHeight: h(75),
          controller: _pc,
          panel: Container(
            //color: Colors.red,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0, -1.05),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        print("close");
                        _pc.close();
                      });
                    },
                    child: Column(
                      children: [
                        SizedBox(height: 2),
                        Icon(Icons.keyboard_arrow_down, size: 50),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center, child: divListPanel[divIndex]),
              ],
            ),
          ),
          body: Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: _body(),
          )),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0Xffb22020),
                  ),
                  child: SizedBox(height: 50)),
              ListTile(
                leading: Icon(Icons.train),
                title: Text('Transportation'),
                onTap: () {
                  Navigator.of(context).pushNamed('/transport');
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Blogs'),
                onTap: () {
                  Navigator.of(context).pushNamed('/blogs');
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Budget Planner'),
                onTap: () {
                  //Navigator.of(context).pushNamed('/transport');
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Design a Tshirt'),
                onTap: () {
                  Navigator.of(context).pushNamed('/Tshirt');
                },
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
                icon: Icon(Icons.train),
                color: Color(0Xffb22020),
                onPressed: () {
                  Navigator.of(context).pushNamed('/transport');
                },
              ),
              IconButton(
                icon: Icon(Icons.monetization_on),
                color: Color(0Xffb22020),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.edit_location),
                color: Color(0Xffb22020),
                onPressed: () {
                  Navigator.of(context).pushNamed('/blogs');
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
          onPressed: () {
            print(ctgDIV.visitedDistricts);
            Navigator.of(context).pushNamed('/result');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _body() {
    return Container(
      width: w(100) < 500 ? w(95) : w(80),

      height: w(100) < 500 ? w(96.5) * 1.30 : w(85) * 1.30,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -2.0,
            blurRadius: 2.0,
          ),
        ],
      ),
      //color: Colors.red,
      child: Stack(
        children: <Widget>[
          Center(
            child: SvgPicture.asset(
              'assets/images/BDMapv2.svg',
              // width: w(95),
              // height: w(95) * 1.30,
            ),
          ),
          Align(
            alignment: Alignment(1, -0.98),
            child: Text(
              "SELECT THE PLACES YOU'VE VISITED",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.85),
            child: Text(
              "CONFIRM",
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          // ANCHOR Ctg
          Align(
            alignment: Alignment(1.1, 0.55),
            child: FlatButton(
              onPressed: () => {updateIndex(2)},
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "CHITTAGONG",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            color: Colors.blue[900],
                            fontSize: h(100) * 0.02,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue[900],
                            ),
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 1),
                          child: Consumer<ProviderDivision>(
                            builder: (context, ctgDiv, child) {
                              ctgDIV.visitedDistricts =
                                  ctgDiv.ctgVisitedDistricts;

                              return Text(
                                '${ctgDIV.visitedDistricts}/${ctgDIV.totalDistricts}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h(100) * 0.02,
                                    fontWeight: FontWeight.w600),
                              );
                            },
                          ),
                        ))
                  ]),
            ),
          ),
          //  ANCHOR Barishal
          Align(
            //Barishal
            alignment: Alignment(0, 0.48),
            child: FlatButton(
              onPressed: () => {updateIndex(3)},
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Text(
                    "BARISHAL",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: Colors.deepOrange[800],
                        fontSize: h(100) * 0.02,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
                          horizontal: 7, vertical: 1),
                      child: Consumer<ProviderDivision>(
                          builder: (context, barishalDiv, child) {
                        barishalDIV.visitedDistricts =
                            barishalDiv.barishalVisitedDistricts;
                        return Text(
                          "${barishalDiv.barishalVisitedDistricts}/${barishalDIV.totalDistricts}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: h(100) * 0.02,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ANCHOR Khulna
          Align(
            alignment: Alignment(-0.58, 0.3),
            child: FlatButton(
              onPressed: () => {updateIndex(4)},
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "KHULNA",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.green[800],
                          fontSize: h(100) * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                            horizontal: 7, vertical: 1),
                        child: Consumer<ProviderDivision>(
                            builder: (context, khulnaDiv, child) {
                          khulnaDIV.visitedDistricts =
                              khulnaDiv.khulnaVisitedDistricts;

                          return Text(
                            "${khulnaDiv.khulnaVisitedDistricts}/${khulnaDIV.totalDistricts}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: h(100) * 0.02,
                            ),
                          );
                        }),
                      ),
                    ),
                  ]),
            ),
          ),
          // ANCHOR Dhaka
          Align(
            //Dhaka
            alignment: Alignment(-0.1, -0.05),
            child: FlatButton(
              onPressed: () => {
                updateIndex(1),
              },
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "DHAKA",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.pink[800],
                          fontSize: h(100) * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                            horizontal: 7, vertical: 1),
                        child: Consumer<ProviderDivision>(
                            builder: (context, dhakaDiv, child) {
                          dhakaDIV.visitedDistricts =
                              dhakaDiv.dhakaVisitedDistricts;

                          return Text(
                            "${dhakaDiv.dhakaVisitedDistricts}/${dhakaDIV.totalDistricts}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: h(100) * 0.02,
                            ),
                          );
                        }),
                      ),
                    ),
                  ]),
            ),
          ),
          // ANCHOR Mymensingh
          Align(
            // Mymensingh
            alignment: Alignment(0, -0.47),
            child: FlatButton(
              onPressed: () => {updateIndex(7)},
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "MYMENSINGH",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.red[800],
                          fontSize: h(100) * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                            horizontal: 7, vertical: 1),
                        child: Consumer<ProviderDivision>(
                            builder: (context, mymensinghDiv, child) {
                          mymensinghDIV.visitedDistricts =
                              mymensinghDiv.mymensinghVisitedDistricts;

                          return Text(
                            "${mymensinghDIV.visitedDistricts}/${mymensinghDIV.totalDistricts}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: h(100) * 0.02,
                            ),
                          );
                        }),
                      ),
                    ),
                  ]),
            ),
          ),
          // ANCHOR Sylhet
          Align(
            //Sylhet
            alignment: Alignment(.74, -0.4),
            child: FlatButton(
              onPressed: () => {updateIndex(0)},
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "SYLHET",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.deepOrange[800],
                          fontSize: h(100) * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                            horizontal: 7, vertical: 1),
                        child: Consumer<ProviderDivision>(
                            builder: (context, sylhetDiv, child) {
                          sylhetDIV.visitedDistricts =
                              sylhetDiv.sylhetVisitedDistricts;

                          return Text(
                            "${sylhetDIV.visitedDistricts}/${sylhetDIV.totalDistricts}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: h(100) * 0.02,
                            ),
                          );
                        }),
                      ),
                    ),
                  ]),
            ),
          ),
          // ANCHOR Rangpur
          Align(
            //Rangpur
            alignment: Alignment(-0.66, -0.77),
            child: FlatButton(
              onPressed: () => {updateIndex(6)},
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "RANGPUR",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.lime[800],
                          fontSize: h(100) * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                            horizontal: 7, vertical: 1),
                        child: Consumer<ProviderDivision>(
                            builder: (context, rangpurDiv, child) {
                          rangpurDIV.visitedDistricts =
                              rangpurDiv.rangpurVisitedDistricts;

                          return Text(
                            "${rangpurDIV.visitedDistricts}/${rangpurDIV.totalDistricts}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: h(100) * 0.02,
                            ),
                          );
                        }),
                      ),
                    ),
                  ]),
            ),
          ),
          // ANCHOR Rajshahi
          Align(
            //Rajshahi
            alignment: Alignment(-0.72, -0.34),
            child: FlatButton(
              onPressed: () => {updateIndex(5)},
              child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Text(
                      "RAJSHAHI",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: h(100) * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
                            horizontal: 7, vertical: 1),
                        child: Consumer<ProviderDivision>(
                            builder: (context, rajshahiDiv, child) {
                          rajshahiDIV.visitedDistricts =
                              rajshahiDiv.rajshahiVisitedDistricts;

                          return Text(
                            "${rajshahiDIV.visitedDistricts}/${rajshahiDIV.totalDistricts}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: h(100) * 0.02,
                            ),
                          );
                        }),
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
