import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import 'package:travel_app/SizeConfig.dart';
import '../CustomDistrictButton.dart';

class PanelSylhet extends StatefulWidget {
  PanelSylhet({Key key}) : super(key: key);

  @override
  _PanelSylhetState createState() => _PanelSylhetState();
}

var sylhetcity = new Districts("sylhet", false);
var habiganj = new Districts("habiganj", false);
var moulvibazar = new Districts("moulvibazar", false);
var sunamganj = new Districts("sunamganj", false);

class _PanelSylhetState extends State<PanelSylhet> {
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
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/sylhet.svg',
              height: h(100),
              width: w(100),
            ),
             DistrictButton('Sylhet', sylhetcity,.4,-.35),
            // DistrictButton('Habiganj', habiganj, null, 41, 51, null),
            // DistrictButton('Moulvibazar', moulvibazar, null, 38, 27, null),
            // DistrictButton('Sunamganj', sunamganj, null, 24, 54, null),
          ],
        ),
      ),
    );
  }
}
