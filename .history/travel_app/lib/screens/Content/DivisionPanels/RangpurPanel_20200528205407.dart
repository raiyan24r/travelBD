import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ClassesData.dart';
import '../CustomDistrictButton.dart';


class PanelRangpur extends StatefulWidget {
  PanelRangpur({Key key}) : super(key: key);

  @override
  _PanelRangpurState createState() => _PanelRangpurState();
}
var rangpurcity = new Districts("rangpur", false);
class _PanelRangpurState extends State<PanelRangpur> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/rangpur.svg',
          ),
          DistrictButton('RANGPUR', rangpurcity, 110, null, null, 190),
        ],
      )),
    );
  }
}