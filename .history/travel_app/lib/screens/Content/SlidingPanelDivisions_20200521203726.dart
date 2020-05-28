import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


List<Widget> divListPanel = [
  PanelSylhet(),
  PanelDhaka(),
  PanelChittagong(),
  PanelBarishal(),
  PanelKhulna(),
  PanelRajshahi(),
  PanelRangpur(),
  PanelMymensingh(),
];





class PanelSylhet extends StatefulWidget {
  PanelSylhet({Key key}) : super(key: key);

  @override
  _PanelSylhetState createState() => _PanelSylhetState();
}

class _PanelSylhetState extends State<PanelSylhet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(

          Stack(
        children: <Widget>[
          Center(
            child: Container(
              color: Colors.white60,
              height: 540,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  'assets/images/BDMapv2.svg',
                ),
              ),
            ),
          ),
          // ANCHOR Ctg
          Positioned(
            //Ctg
            bottom: 140,
            right: 20,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.blue[400],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(2)},
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
          //  ANCHOR Barishal
          Positioned(
            //Barishal
            bottom: 130,
            right: 154,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.orange[500],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(3)},
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
          // ANCHOR Khulna
          Positioned(
            //Khulna
            bottom: 180,
            left: 80,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(4)},
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
          // ANCHOR Dhaka
          Positioned(
            //Dhaka
            top: 240,
            left: 150,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {
                    updateIndex(1),
                  },
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
          // ANCHOR Mymensingh
          Positioned(
            // Mymensingh
            top: 150,
            left: 150,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(7)},
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
          // ANCHOR Sylhet
          Positioned(
            //Sylhet

            top: 160,
            right: 50,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(0)},
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
                      color: Colors.orange[900],
                      fontWeight: FontWeight.w900),
                ),
              ]),
            ),
          ),
          // ANCHOR Rangpur
          Positioned(
            //Rangpur
            top: 70,
            left: 60,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(6)},
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
          // ANCHOR Rajshahi
          Positioned(
            //Rajshahi
            top: 170,
            left: 60,
            child: Container(
              child: Column(children: <Widget>[
                FlatButton(
                  color: Colors.red[400],
                  shape: CircleBorder(),
                  onPressed: () => {updateIndex(5)},
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
            maxHeight: 500,
            controller: pc,
            panel: Center(
              child: divListPanel[divIndex],
            ),
          )
        ],
      ),
          child: SvgPicture.asset(
                  'assets/images/sylhet.svg',
                ),
        )
      ),
    );
  }
}



class PanelDhaka extends StatefulWidget {
  PanelDhaka({Key key}) : super(key: key);

  @override
  _PanelDhakaState createState() => _PanelDhakaState();
}

class _PanelDhakaState extends State<PanelDhaka> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Dhaka Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}

class PanelChittagong extends StatefulWidget {
  PanelChittagong({Key key}) : super(key: key);

  @override
  _PanelChittagongState createState() => _PanelChittagongState();
}

class _PanelChittagongState extends State<PanelChittagong> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Ctg Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}

class PanelBarishal extends StatefulWidget {
  PanelBarishal({Key key}) : super(key: key);

  @override
  _PanelBarishalState createState() => _PanelBarishalState();
}

class _PanelBarishalState extends State<PanelBarishal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Barishal Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}


class PanelKhulna extends StatefulWidget {
  PanelKhulna({Key key}) : super(key: key);

  @override
  _PanelKhulnaState createState() => _PanelKhulnaState();
}

class _PanelKhulnaState extends State<PanelKhulna> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Khulna Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}

class PanelRajshahi extends StatefulWidget {
  PanelRajshahi({Key key}) : super(key: key);

  @override
  _PanelRajshahiState createState() => _PanelRajshahiState();
}

class _PanelRajshahiState extends State<PanelRajshahi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Rajshahi Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}

class PanelRangpur extends StatefulWidget {
  PanelRangpur({Key key}) : super(key: key);

  @override
  _PanelRangpurState createState() => _PanelRangpurState();
}

class _PanelRangpurState extends State<PanelRangpur> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Rangpur Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}

class PanelMymensingh extends StatefulWidget {
  PanelMymensingh({Key key}) : super(key: key);

  @override
  _PanelMymensinghState createState() => _PanelMymensinghState();
}

class _PanelMymensinghState extends State<PanelMymensingh> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Text("Mymensingh Map",style:TextStyle(fontSize:40)),
      ),
    );
  }
}