import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';



class PanelKhulna extends StatefulWidget {
  PanelKhulna({Key key}) : super(key: key);

  @override
  _PanelKhulnaState createState() => _PanelKhulnaState();
}
var khulnacity = new Districts("khulna", false);
class _PanelKhulnaState extends State<PanelKhulna> {
  @override
  Widget build(BuildContext context) {
    return ontainer(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/barishal.svg',
          ),
          DistrictButton('Barishal', barishalcity, null, 100, 170, null),
        ],
      )),
    );
  }
}