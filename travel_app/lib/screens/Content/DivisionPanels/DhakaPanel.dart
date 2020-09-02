import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../SizeConfig.dart';
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
var munshiganj = new Districts("munshiganj", false);
var narsingdi = new Districts("narsingdi", false);
var shariatpur = new Districts("shariatpur", false);
var rajbari = new Districts("rajbari", false);
var madaripur= new Districts("madaripur", false);
var gopalganj = new Districts("gopalganj", false);
var faridpur = new Districts("faridpur", false);

class _PanelDhakaState extends State<PanelDhaka> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: h(67) * .95,
        width: h(67) * .95 * .8,
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
            Transform.scale(
              scale:1.2,
                          child: Container(
                child: SvgPicture.asset(
                  'assets/images/dhaka.svg',
                  
                ),
              ),
            ),
             DistrictButton('Dhaka', dhakacity, 0.03, -0.01),
             DistrictButton('Gazipur', gazipur, .21, -.28),
             DistrictButton('Tangail', tangail, -.28, -.45),
             DistrictButton('Kishoreganj', kishoreganj, .82, -.55),
             DistrictButton('Narayanganj', narayanganj, .41, 0.09),
             DistrictButton('Manikganj', manikganj,- 0.4,- 0.05),
             DistrictButton('Munshiganj', munshiganj, .21, 0.32),
             DistrictButton('Narsingdi', narsingdi, .65, -.18),
             DistrictButton('Shariatpur', shariatpur, .25, .55),
             DistrictButton('Rajbari', rajbari,- 0.8,0.1),
             DistrictButton('Madaripur', madaripur, -0.18, .5),
             DistrictButton('Gopalganj', gopalganj, -0.47, .7),
             DistrictButton('Faridpur', faridpur,- 0.44,0.3),
          ],
        ),
      ),
    );
  }
}