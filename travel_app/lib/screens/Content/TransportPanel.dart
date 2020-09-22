import 'package:flutter/material.dart';
import 'TransportCard.dart';

class Transport extends StatefulWidget {
  Transport({Key key}) : super(key: key);

  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: allDestinations.map<Widget>((Destination destination) {
          return DestinationView(destination: destination);
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 20,
        fixedColor: Color(0Xffb22020),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: Icon(destination.icon),
              backgroundColor: Colors.red,
              title: Text(destination.title));
        }).toList(),
      ),
    );
  }
}

class Destination {
  final String title;
  final IconData icon;
  final MaterialColor color;
  final List gari1;
  final List gari2;
  final List gari3;
  final List gari4;
  final List gari5;
  final List gari6;
  const Destination(
    this.title,
    this.icon,
    this.color,
    this.gari1,
    this.gari2,
    this.gari3,
    this.gari4,
    this.gari5,
    this.gari6,
  );
}

List<Destination> allDestinations = <Destination>[
  Destination(
    'BUS',
    Icons.local_car_wash,
    Colors.red,
    [
      TransportCard(
          "Hanif Enterprise",
          "+8801992680084",
          "http://hanifenterprisebd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_tj6dja9rghrcfcdtmcrt229u2fnpzw5tpfu",
          "9am/10am/9pm/10pm",
          "480",
          "1000"),
      TransportCard(
          "Shyamoli Paribahan",
          "+8801992680085",
          "https://shyamoliparibahanbd.com/",
          "https://shyamoliparibahanbd.com/wp-content/uploads/2018/03/logo-2-h-300x162.png",
          "9am/10am/9pm/10pm",
          "480",
          "1200"),
      TransportCard(
          "T R Travels",
          "+8801762164480",
          "http://busbd.com.bd/",
          "http://www.online-dhaka.com/english/images/ui/logo_online-dhaka.png",
          "9am/10am/9pm/10pm",
          "480",
          "1250"),
      TransportCard(
          "Soudia",
          "+8801992680079",
          "http://www.kemnejabo.com/soudia-coach-service/",
          "http://www.bandarbantours.com/wp-content/uploads/2012/02/Saudia-Paribahan.jpg",
          "9am/10am/9pm/10pm",
          "480",
          "1250"),
    ],
    [
      TransportCard(
          "Desh Travels",
          "+8801992680084",
          "http://deshtravelsbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_sunaqo6obybjlswoorz34gdlrs5kirdplo9",
          "9am/10am/9pm/10pm",
          "750",
          "1800"),
      TransportCard(
          "Shyamoli Paribahan",
          "+8801992680085",
          "https://shyamoliparibahanbd.com/",
          "https://shyamoliparibahanbd.com/wp-content/uploads/2018/03/logo-2-h-300x162.png",
          "9am/10am/9pm/10pm",
          "800",
          "1500"),
      TransportCard(
          "T R travels",
          "+8801762164480",
          "http://busbd.com.bd/",
          "http://www.online-dhaka.com/english/images/ui/logo_online-dhaka.png",
          "9am/10am/9pm/10pm",
          "800",
          "1400"),
      TransportCard(
          "Eagle Transport",
          "+8801992680079",
          "https://www.eagleparibahan.com/",
          "https://www.eagleparibahan.com/images/3dlogo.gif",
          "9am/10am/9pm/10pm",
          "800",
          "1500"),
      TransportCard(
          "Hanif Enterprise",
          "+8801992680085",
          "http://hanifenterprisebd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_tj6dja9rghrcfcdtmcrt229u2fnpzw5tpfu",
          "9am/10am/9pm/10pm",
          "800",
          "2000"),
      TransportCard(
          "Royal Coach",
          "+8801992680087",
          "http://www.kemnejabo.com/royel-coach/",
          "http://www.kemnejabo.com/wp-content/uploads/2017/01/royal-coach.pngs",
          "9am/10am/9pm/10pm",
          "800",
          "1500"),
      TransportCard(
          "SaintMartin ltd",
          "+8801992680088",
          "http://saintmartinparibahanbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_gdx3zlllkryn8u2d8r4rqjyzfw1i4ikplan",
          "9am/10am/9pm/10pm",
          "800",
          "1500"),
    ],
    [
      TransportCard(
          "SaintMartin ltd",
          "+8801992680084",
          "http://saintmartinparibahanbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_gdx3zlllkryn8u2d8r4rqjyzfw1i4ikplan",
          "9am/10am/9pm/10pm",
          "650",
          "950"),
      TransportCard(
          "Desh Travels",
          "+8801992680085",
          "http://deshtravelsbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_sunaqo6obybjlswoorz34gdlrs5kirdplo9",
          "9am/10am/9pm/10pm",
          "620",
          "1400"),
      TransportCard(
          "Hanif Enterprise",
          "+8801992680085",
          "http://hanifenterprisebd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_tj6dja9rghrcfcdtmcrt229u2fnpzw5tpfu",
          "9am/10am/9pm/10pm",
          "650",
          "2000"),
      TransportCard(
          "Shyamoli Paribahan",
          "+8801992680086",
          "https://shyamoliparibahanbd.com/",
          "https://shyamoliparibahanbd.com/wp-content/uploads/2018/03/logo-2-h-300x162.png",
          "9am/10am/9pm/10pm",
          "620",
          "1500"),
    ],
    [
      TransportCard(
          "Shohag Paribahan",
          "+8801729931881",
          "https://shohagh.com/",
          "https://shohagh.com/assets/img/logo-sp2.png",
          "9am/10am/9pm/10pm",
          "615",
          "1300"),
      TransportCard(
          "Green Line\n Paribahan",
          "+8801992680084",
          "http://greenlinebd.com/",
          "https://greenlinebd.com/wp-content/uploads/2020/08/glp-logo.png",
          "9am/10am/9pm/10pm",
          "400",
          "1100"),
      TransportCard(
          "Tungipara Express",
          "+8801992680085",
          "http://www.banglanewslive.com/tungipara-express-bus-ticket-counter-phone-number/",
          "http://www.banglanewslive.com/wp-content/uploads/2016/10/Tungipara-express-bus-counter-number.jpg",
          "9am/10am/9pm/10pm",
          "400",
          "550"),
    ],
    [
      TransportCard(
          "London Express",
          "01992680084",
          "https://www.lonexbd.com/",
          "https://www.lonexbd.com/assets/img/london-express-logo.png",
          "9am/10am/9pm/10pm",
          "950",
          "1200"),
      TransportCard(
          "Golden Line\n paribahan",
          "01992680085",
          "https://itravelbd.com/golden-line-paribahan/",
          "https://itravelbd.com/wp-content/uploads/2019/05/golden_line_paribahan.jpg",
          "9am/10am/9pm/10pm",
          "950",
          "1200"),
      TransportCard(
          "Green Line \n Paribahan",
          "+8801762164480",
          "http://greenlinebd.com/",
          "https://greenlinebd.com/wp-content/uploads/2020/08/glp-logo.png",
          "9am/10am/9pm/10pm",
          "950",
          "1200"),
      TransportCard(
          "SaintMartin\nParibahan",
          "+8801992680086",
          "http://saintmartinparibahanbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_gdx3zlllkryn8u2d8r4rqjyzfw1i4ikplan",
          "9am/10am/9pm/10pm",
          "700",
          "900"),
    ],
    [
      TransportCard(
          "SaintMartin ltd.",
          "+8801992680084",
          "http://saintmartinparibahanbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_gdx3zlllkryn8u2d8r4rqjyzfw1i4ikplan",
          "9am/10am/9pm/10pm",
          "300",
          "600"),
      TransportCard(
          "Desh Travels",
          "+8801992680085",
          "http://deshtravelsbd.com/",
          "http://s3.amazonaws.com/busbdmedia/company_sunaqo6obybjlswoorz34gdlrs5kirdplo9",
          "9am/10am/9pm/10pm",
          "250",
          "800"),
      TransportCard(
          "Green Line",
          "+8801762164480",
          "http://greenlinebd.com/",
          "https://itravelbd.com/wp-content/uploads/2019/05/golden_line_paribahan.jpg",
          "9am/10am/9pm/10pm",
          "300",
          "650"),
    ],
  ),
  Destination(
    'TRAIN',
    Icons.train,
    Colors.red,
    [
      TransportCard(
          "Subarna Express",
          "+8801992680084",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Godhuli",
          "+8801992680085",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Provati",
          "+8801992680079",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Express",
          "+8801992680086",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Turna Express",
          "+8801762164480",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Shonar Bangla\n Express",
          "+8801762164481",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
    ],
    [
      TransportCard(
          "Subarna Express",
          "+8801992680084",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Godhuli",
          "+8801992680085",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Provati",
          "+8801992680079",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Express",
          "+8801992680086",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Turna Express",
          "+8801762164480",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Shonar Bangla Express",
          "+8801762164481",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
    ],
    [
      TransportCard(
          "Subarna Express",
          "+8801992680084",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Godhuli",
          "+8801992680085",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Provati",
          "+8801992680079",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Express",
          "+8801992680086",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Turna Express",
          "+8801762164480",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Shonar Bangla Express",
          "+8801762164481",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
    ],
    [
      TransportCard(
          "Subarna Express",
          "+8801992680084",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Godhuli",
          "+8801992680085",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Provati",
          "+8801992680079",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Express",
          "+8801992680086",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Turna Express",
          "+8801762164480",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Shonar Bangla Express",
          "+8801762164481",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
    ],
    [
      TransportCard(
          "Subarna Express",
          "+8801992680084",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Godhuli",
          "+8801992680085",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Provati",
          "+8801992680079",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Express",
          "+8801992680086",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Turna Express",
          "+8801762164480",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Shonar Bangla Express",
          "+8801762164481",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
    ],
    [
      TransportCard(
          "Subarna Express",
          "+8801992680084",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Godhuli",
          "+8801992680085",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Provati",
          "+8801992680079",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Mahanagar Express",
          "+8801992680086",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Turna Express",
          "+8801762164480",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
      TransportCard(
          "Shonar Bangla Express",
          "+8801762164481",
          "https://www.esheba.cnsbd.com/#/",
          "https://www.esheba.cnsbd.com/img/cns_e-sheba.png",
          "9am/10am/9pm/10pm",
          "300",
          "750"),
    ],
  )
];

class DestinationView extends StatefulWidget {
  DestinationView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  var _valuefrom = "1";
  var _valueto = "2";

  DropdownButton _itemDownFrom() => DropdownButton<String>(
        items: [
          DropdownMenuItem(
            value: "1",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Dhaka",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Chittagong",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "3",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Sylhet",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "4",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Rajshahi",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "5",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Barisal",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "6",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Khulna",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "7",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Mymensingh",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "8",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Rangpur",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "9",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Cox's Bazar",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "10",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "From",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Bandarban",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _valuefrom = value;
          });
        },
        value: _valuefrom,
        isExpanded: true,
      );

  DropdownButton _itemDownTo() => DropdownButton<String>(
        items: [
          DropdownMenuItem(
            value: "1",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Dhaka",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Chittagong",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "3",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Sylhet",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "4",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Rajshahi",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "5",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Barisal",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "6",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Khulna",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "7",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Mymensingh",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "8",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Rangpur",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "9",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Cox's Bazar",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "10",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "To",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  "Bandarban",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _valueto = value;
          });
        },
        value: _valueto,
        isExpanded: true,
      );
  var from = "1";
  var to = "2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('${widget.destination.title}'),
          backgroundColor: Color(0Xffb22020),
        ),
        backgroundColor: Colors.white,
        body: Container(
            child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                            color: Colors.white,
                            
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                            
                          ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 250,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.red[500],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),

                          child: _itemDownFrom(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 250,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.red[500],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),

                          child: _itemDownTo(),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    elevation: 10,
                    color:Colors.green,
                    child: IconButton(
                        color: Colors.white,
                        // hoverColor: Colors.green,
                        // focusColor: Colors.green,
                         highlightColor: Colors.green,
                        icon: Icon(Icons.search),
                        iconSize: 50,
                        onPressed: () {
                          print(_valuefrom);
                          print(_valueto);

                          setState(() {
                            from = _valuefrom;
                            to = _valueto;
                          });
                        }),
                  )
                ],
              ),
            ),
            new Expanded(
              child: Builder(
                builder: (context) {
                  if ((from == "2" || to == "2") &&
                      (from == "1" || to == "1")) {
                    return new ListView.builder(
                        itemCount: widget.destination.gari1.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari1[Index]],
                          );
                        });
                  } else if ((from == "1" || to == "1") &&
                      (from == "9" || to == "9")) {
                    return new ListView.builder(
                        itemCount: widget.destination.gari2.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari2[Index]],
                          );
                        });
                  } else if ((from == "1" || to == "1") &&
                      (from == "6" || to == "6")) {
                    return new ListView.builder(
                        itemCount: widget.destination.gari3.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari3[Index]],
                          );
                        });
                  } else if ((from == "1" || to == "1") &&
                      (from == "10" || to == "10")) {
                    return new ListView.builder(
                        itemCount: widget.destination.gari4.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari4[Index]],
                          );
                        });
                  } else if ((from == "1" || to == "1") &&
                      (from == "3" || to == "3")) {
                    return new ListView.builder(
                        itemCount: widget.destination.gari5.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari5[Index]],
                          );
                        });
                  } else if ((from == "2" || to == "2") &&
                      (from == "9" || to == "9")) {
                    return new ListView.builder(
                        itemCount: widget.destination.gari6.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari6[Index]],
                          );
                        });
                  } else {
                    return new ListView.builder(
                        itemCount: widget.destination.gari2.length,
                        itemBuilder: (BuildContext context, Index) {
                          return new Column(
                            children: <Widget>[widget.destination.gari2[Index]],
                          );
                        });
                  }
                  ;
                },
              ),
            ),
          ],
        )));
  }
}
