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
    return Container(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/khulna.svg',
          ),
          DistrictButton('', khulnacity, null, null, 125, 150),
        ],
      )),
    );
  }
}