import 'package:flutter/material.dart';
import 'package:travel_app/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'SlidingPanelDivisions.dart';
class HomePageMap extends StatefulWidget {
  HomePageMap({Key key}) : super(key: key);

  @override
  _HomePageMapState createState() => _HomePageMapState();
}

void choiceAction(String choice) {
  if (choice == Constants.Settings) {
    print('Settings');
  } else if (choice == Constants.Subscribe) {
    print('Subscribe');
  } else if (choice == Constants.SignOut) {
    print('SignOut');
  }
}

class _HomePageMapState extends State<HomePageMap> {
  PanelController pc = new PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: const Text('Travel',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              color: Colors.white60,
              height: 540,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  'assets/BDMap.svg',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            right: 20,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.blue[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[850], width: 3),
                    ),
                  ),
                ),
                Text(
                  "CHITTAGONG",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            //Barishal
            bottom: 130,
            right: 154,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.orange[500],
                  shape: CircleBorder(),
                  onPressed: () => {pc.open()},
                  child: Container(
                    height: 35,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[850], width: 3),
                    ),
                  ),
                ),
                Text(
                  "BARISHAL",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.orange[900],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            //Khulna
            bottom: 180,
            left: 80,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Text(
                  "KHULNA",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            top: 240,
            left: 150,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Text(
                  "DHAKA",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Text(
                  "MYMENSINGH",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.red[400],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            top: 160,
            right: 50,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Text(
                  "SYLHET",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal[600],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            top: 70,
            left: 60,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Text(
                  "RANGPUR",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow[900],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          Positioned(
            //Rajshahi
            top: 170,
            left: 60,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                  ),
                ),
                Text(
                  "RAJSHAHI",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightBlue[800],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          SlidingUpPanel(
            minHeight: 10,
            maxHeight: 300,
            controller: pc,
            panel: Center(
              child: divListPanel[0],
            ),
          )
        ],
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
    );
  }
}
