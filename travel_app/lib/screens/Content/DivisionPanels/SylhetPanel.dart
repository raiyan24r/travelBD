import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../SizeConfig.dart';
import '../ClassesData.dart';
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
    return Container(
      child: Center(
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/sylhet.svg',
              height: h(100),
              width: w(100),
            ),
            DistrictButton('Sylhet', sylhetcity, null, 24, 26, null),
            DistrictButton('Habiganj', habiganj, null, 41, 51, null),
            DistrictButton('Moulvibazar', moulvibazar, null, 38, 27, null),
            DistrictButton('Sunamganj', sunamganj, null, 24, 54, null),
          ],
        ),
      ),
    );
  }
}
