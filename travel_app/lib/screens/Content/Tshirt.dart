import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';


 
class Tshirt extends StatefulWidget {
  Tshirt() : super();
 
  final String title = "Carousel Demo";
 
  @override
  TshirtState createState() => TshirtState();
}
 
class TshirtState extends State<Tshirt> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://fabrilife.com/image-gallery/5edb4ad708b2d.jpg',
    'https://fabrilife.com/image-gallery/5edb4ad6f0197.jpg',
    'https://fabrilife.com/image-gallery/5edb4ad6c0fbf.jpg',
    'https://fabrilife.com/image-gallery/5edce3ffa7930.jpg',
    
  ];
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        title: Text('Tshirt'),
        backgroundColor: Color(0Xffb22020),
      ),
      body: Container(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              carouselSlider = CarouselSlider(
                height: 250.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.redAccent : Colors.green,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: goToPrevious,
                    child: Text("<"),
                  ),
                  OutlineButton(
                    onPressed: goToNext,
                    child: Text(">"),
                  ),
                 
                  

                ],
              ),
               SizedBox(height:10),
                  Card(
                     borderOnForeground: true ,
      elevation: 20,
      color: Color(0xfffff2f2),
                    
                    child: Center(child: Text("            To order    \nyour customized Tshirt,\n    Press the button",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 24,),))),
                  RaisedButton(onPressed:_launchURL3,
                  child: Text("ORDER Tshirt",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 24,),),
                  
                  ),
                  SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
 
  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
 
  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
_launchURL2() async {
  const url3 = 'https://www.facebook.com/180568212838609/posts/448947392667355/?sfnsn=mo';
  



    if (await canLaunch(url3)) {
    final bool nativeAppLaunchSucceeded = await launch(
      url3,
      forceSafariVC: false,
      universalLinksOnly: true,

    );
    if (!nativeAppLaunchSucceeded) {
      await launch(url3, forceSafariVC: true);
    }
  }
  }
  _launchURL3() async {
  const url = 'https://fabrilife.com/';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: false,
    enableJavaScript: true,
        forceWebView: true,);
  } else {
    throw 'Could not launch $url';
  }
}