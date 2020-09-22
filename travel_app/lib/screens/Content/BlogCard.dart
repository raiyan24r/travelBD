

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';
import 'package:carousel_slider/carousel_slider.dart';

//these are for calling option
class CallsAndMessagesService {
  void call(String number) => launch("tel:$number");
  
  
}






GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}
final CallsAndMessagesService _service = locator<CallsAndMessagesService>();


class BlogCard extends StatefulWidget {
  final String location;
  
  final String phone;
  final String imagelink1;
  final String imagelink2;
  final String imagelink3;
  final String imagelink4;
  final String blog;
 
 

  BlogCard(
      this.location,  this.phone, this.imagelink1, this.imagelink2,this.imagelink3, this.imagelink4,this.blog);

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
   CarouselSlider carouselSlider;
  int _current = 0;
  List  imgList = ['https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    
  ];
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  
  void  initState(){
   super.initState();
   setState(() {

      imgList=[widget.imagelink1,widget.imagelink2,widget.imagelink3,widget.imagelink4];

    });

   
 }
 
  @override
  Widget build(BuildContext context) {
     imgList=[widget.imagelink1,widget.imagelink2,widget.imagelink3,widget.imagelink4];
    return Card(
    borderOnForeground: true ,
      elevation: 20,
      color: Color(0xfffff2f2),
          child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              carouselSlider = CarouselSlider(
                height: 300.0,
                aspectRatio: 0.5,
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
              SizedBox(height: 30,),
              Card(
                elevation: 20,
                
                child: Center(child: Text(widget.location,style: TextStyle(color: Color(0Xffb22020),fontWeight: FontWeight.w700,fontSize: 40,),  ))),
             SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.all(11.0),
               child: Card(
                 color: Color(0xfffff2e7),
                 elevation: 20,
                 
                 child:
                  Text(widget.blog,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,),  )),
             ),
            ],
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

