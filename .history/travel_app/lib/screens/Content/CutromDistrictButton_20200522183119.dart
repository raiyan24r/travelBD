import 'package:flutter/material.dart';


class DistrictButton extends StatefulWidget {
  String name;
  var disName;
  final double top;
  final double left;
  final double right;
  final double bottom;

  DistrictButton(
      this.name, this.disName, this.left, this.top, this.right, this.bottom);

  @override
  _DistrictButtonState createState() => _DistrictButtonState();
}

class _DistrictButtonState extends State<DistrictButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      right:widget.right,
      bottom:
      child: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 30,
            child: FlatButton(
              color: widget.disName.isVisited ? Colors.green : Colors.red,
              shape: CircleBorder(),
              onPressed: () => {
                setState(() {
                  widget.disName.updateVisited(widget.disName);
                }),
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3),
                ),
              ),
            ),
          ),
          Text(
            widget.name,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
