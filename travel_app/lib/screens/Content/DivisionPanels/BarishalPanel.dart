import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import 'package:travel_app/SizeConfig.dart';
import '../CustomDistrictButton.dart';


class PanelBarishal extends StatefulWidget {
  PanelBarishal({Key key}) : super(key: key);

  @override
  _PanelBarishalState createState() => _PanelBarishalState();
}



var barishalcity = new Districts("barishal", false);

class _PanelBarishalState extends State<PanelBarishal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: h(75) * .95,
        width: h(75) * .95 * .65,
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
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/barishal.svg',
          ),
          DistrictButton('Barishal', barishalcity,0,-0.55),
        ],
      )),
    ));
  
  }
}
