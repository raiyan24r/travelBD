import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';



class PanelDhaka extends StatefulWidget {
  PanelDhaka({Key key}) : super(key: key);

  @override
  _PanelDhakaState createState() => _PanelDhakaState();
}

var dhakacity = new Districts("dhaka", false);
var gazipur = new Districts("gazipur", false);
var tangail = new Districts("tangail", false);
var kishoreganj = new Districts("kishoreganj", false);
var narayanganj = new Districts("narayanganj", false);
var manikganj = new Districts("manikganj", false);

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
            DistrictButton('Dhaka', dhakacity, 175, 230, null, null),
            DistrictButton('Gazipur', gazipur, 200, 150, null, null),
            DistrictButton('Tangail', tangail, 100, 100, null, null),
            DistrictButton('Kishoreganj', kishoreganj, null, 105, 25, null),
            DistrictButton('Narayanganj', narayanganj, null, 250, 90, null),
            DistrictButton('Manikganj', manikganj, 100, 200, null, null),
          ],
        ),
      ),
    );
  }
}