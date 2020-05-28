class PanelChittagong extends StatefulWidget {
  PanelChittagong({Key key}) : super(key: key);

  @override
  _PanelChittagongState createState() => _PanelChittagongState();
}

class _PanelChittagongState extends State<PanelChittagong> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/chittagong.svg',
          ),
        ],
      )),
    );
  }
}