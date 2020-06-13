import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:travel_app/screens/Content/ClassesData.dart';

import 'package:travel_app/screens/Content/testingpanel.dart';
import '../../SizeConfig.dart';

import 'package:google_fonts/google_fonts.dart';

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
    final ctgDiv = Provider.of<ProviderDivision>(context, listen: false);
    final khulnaDiv=Provider.of<ProviderDivision>(context, listen: false);
    final barishalDiv = Provider.of<ProviderDivision>(context, listen: false);
    final dhakaDiv=Provider.of<ProviderDivision>(context, listen: false);
    final rajshahiDiv = Provider.of<ProviderDivision>(context, listen: false);
    final rangpurDiv=Provider.of<ProviderDivision>(context, listen: false);
    final sylhetDiv = Provider.of<ProviderDivision>(context, listen: false);
    final mymensinghDiv=Provider.of<ProviderDivision>(context, listen: false);

    //final dhakaDiv=Provider.of<Division>(context, listen: false);
    return Align(
      alignment: Alignment(widget.xAxis, widget.yAxis),
      child: InkWell(
        
          onTap: () => {
           
            setState(() {
      
      widget.disName.updateVisited(widget.disName);
      if (divIndex == 2) {
        ctgDiv.buttonPress(divIndex,widget.disName.isVisited);
      } else if (divIndex == 4) {
        khulnaDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
      else if (divIndex == 3) {
        barishalDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
      else if (divIndex == 1) {
        dhakaDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
      else if (divIndex == 7) {
       mymensinghDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
      else if (divIndex == 0) {
        sylhetDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
      else if (divIndex == 6) {
       rangpurDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
      else if (divIndex == 5) {
       rajshahiDiv.buttonPress(divIndex,widget.disName.isVisited);
      }
            }),
            
          },
          child: Container(
            child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      children: <Widget>[
        Container(
          child: widget.disName.isVisited
              ? Icon(
                  Icons.location_on,
                  size: h(4),
                  color: Colors.green[800],
                )
              : Icon(
                  Icons.location_off,
                  size: h(4),
                  color: Colors.red[600],
                ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            //color: Colors.red,
          ),
        ),
        Text(
          widget.name.toUpperCase(),
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
                fontSize: h(1.57),
                color: widget.disName.isVisited
                    ? Colors.green[900]
                    : Colors.red[900],
                fontWeight: FontWeight.w900),
          ),
        )
      ],
            ),
          ),
        ),
    );
  }
}


