import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ClassesData.dart';

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

Color buttonColor;
bool isButtonPressed = false;

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
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/sylhet.svg',
            ),
          ],
        ),
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
        child: Stack(
          children: <Widget>[
            Transform.scale(
              scale: 1.2,
              child: Container(
                child: SvgPicture.asset(
                  'assets/images/dhaka.svg',
                ),
              ),
            ),





            DistrictButton(dhakacity,100,200,0,0),






            Positioned(
              top: 160,
              left: 200,
              child: Container(
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: FlatButton(
                      color: gazipur.isVisited ? Colors.green : Colors.red,
                      shape: CircleBorder(),
                      onPressed: () => {
                        setState(() {
                          gazipur.updateVisited(gazipur);
                        }),
                      print('Gazipur is ${gazipur.isVisited}')
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Gazipur",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.lightBlue[800],
                        fontWeight: FontWeight.w900),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DistrictButton extends StatefulWidget {
   var DisName;
  final double top;
  final double left;
  final double right;
  final double bottom;

   DistrictButton(this.DisName,this.left,this.top,this.right,this.bottom
  );

  @override
  _DistrictButtonState createState() => _DistrictButtonState();
}

class _DistrictButtonState extends State<DistrictButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      child: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 30,
            child: FlatButton(
              color: {widget.DisName.isVisited ? Colors.green : Colors.red,
              shape: CircleBorder(),
              onPressed: () => {
                setState(() {
                  dhakacity.updateVisited(dhakacity);
                }),
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3),
                ),
              ),
            ),
          ),
          Text(
            "Dhaka",
            style: TextStyle(
                fontSize: 18,
                color: Colors.lightBlue[800],
                fontWeight: FontWeight.w900),
          ),
        ]),
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
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/chittagong.svg',
          ),
        ],
      )),
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
        child: Text("Barishal Map", style: TextStyle(fontSize: 40)),
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
        child: Text("Khulna Map", style: TextStyle(fontSize: 40)),
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
        child: Text("Rajshahi Map", style: TextStyle(fontSize: 40)),
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
        child: Text("Rangpur Map", style: TextStyle(fontSize: 40)),
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
        child: Text("Mymensingh Map", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
