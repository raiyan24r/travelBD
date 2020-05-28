


class HomePageMap extends StatefulWidget {
  HomePageMap({Key key}) : super(key: key);

  @override
  _HomePageMapState createState() => _HomePageMapState();
}

class _HomePageMapState extends State<HomePageMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0Xffb22020),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          title: Center(
            child: const Text('Travel',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Container(
                color: Colors.white60,
                height: 540,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(
                    'assets/BDMap.svg',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              right: 20,
              child: Container(
                child: Column(children: <Widget>[
                  FlatButton(
                    color: Colors.blue[400],
                    shape: CircleBorder(),
                    onPressed: () => {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[850], width: 3),
                      ),
                    ),
                  ),
                  Text(
                    "CHITTAGONG",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w900),
                  ),
                ]),
              ),
            ),
            Positioned(         //Barishal
              bottom: 140,
              right: 154,
              child: Container(
                child: Column(children: <Widget>[
                  FlatButton(
                    color: Colors.orange[500],
                    shape: CircleBorder(),
                    onPressed: () => {},
                    child: Container(
                      height: 35,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[850], width: 3),
                      ),
                    ),
                  ),
                  Text(
                    "BARISHAL",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.orange[900],
                        fontWeight: FontWeight.w900),
                  ),
                ]),
              ),
            ),
            Positioned(
              bottom: 180,
              left: 80,
              child: Container(
                child: Column(children: <Widget>[
                  FlatButton(
                    color: Colors.red[400],
                    shape: CircleBorder(),
                    onPressed: () => {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    ),
                  ),
                  Text(
                    "KHULNA",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w900),
                  ),
                ]),
              ),
            ),
            Positioned(
              top: 240,
              left: 150,
              child: Container(
                child: Column(children: <Widget>[
                  FlatButton(
                  
  }
}