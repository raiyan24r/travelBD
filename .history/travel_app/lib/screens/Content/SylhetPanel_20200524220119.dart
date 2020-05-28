import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ClassesData.dart';
import 'CustomDistrictButton.dart';


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
            DistrictButton('Dhaka', dhakacity, 175, 230, null, null),



          ],
        ),
      ),
    );
  }
}
