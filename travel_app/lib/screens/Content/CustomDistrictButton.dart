import 'package:flutter/material.dart';
import 'package:travel_app/screens/Content/homePageMap.dart';
import '../../SizeConfig.dart';

import 'package:google_fonts/google_fonts.dart';
import 'testingpanel.dart';

class DistrictButton extends StatefulWidget {
  final String name;
  var disName;
  final double xAxis;
  final double yAxis;


  DistrictButton(this.name, this.disName, this.xAxis, this.yAxis);

  @override
  _DistrictButtonState createState() => _DistrictButtonState();
}

class _DistrictButtonState extends State<DistrictButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(widget.xAxis, widget.yAxis),
      child: Container(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: h(3),
              child: FlatButton(
                color: widget.disName.isVisited ? Colors.green : Colors.red,
                shape: CircleBorder(),
                onPressed: () => {
                  setState(() {
                    widget.disName.updateVisited(widget.disName);
                    if (divIndex == 2) {
                      setState(() {
                        ctgDiv.visitedDistricts = ctgDiv.visitedDistricts + 1;
                      });
                      print(ctgDiv.visitedDistricts);
                      
                    }
                  }),
                },
                child: Container(
                  height: h(3),
                  width: h(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                ),
              ),
            ),
            Text(
              widget.name.toUpperCase(),
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    fontSize: h(1.57),
                    color: widget.disName.isVisited
                        ? Colors.green[600]
                        : Colors.red[900],
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
