import 'package:flutter/material.dart';


import 'package:dropdownfield/dropdownfield.dart';

import 'BlogCard.dart';
import 'dart:convert';


import 'package:http/http.dart'as http;
import 'dart:async';



 
class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();
 
  final String title = "Carousel Demo";
 
  @override
  CarouselDemoState createState() => CarouselDemoState();
}
 
class CarouselDemoState extends State<CarouselDemo> {
   _fetchdata() async{
 
 var data={
   
    "location":locationcontroller.text,
    
  };
  var response=await http.post("https://www.raiyan24r.tk/blog.php",body: jsonEncode(data));
  //var response=await http.post("https://mugdho080.000webhostapp.com/blog.php",body: jsonEncode(data));
 

   //print(response.body);
  // print("ryryryr");
   return jsonDecode(response.body);
 
 
   

 }
 TextEditingController locationcontroller= TextEditingController();

Future<dynamic> _listFuture;
List<String> cities = [
    'BANDARBAN',
    'NAFAKHUM',
    'ST. MARTIN',
    'SAJEK',
    'CHANDPUR',
    'NIJHUM DIP',
    'Sylhet',
    'HUM HUM '
  ];
 @override
 void  initState(){
   super.initState();
   _fetchdata();
   _listFuture =_fetchdata();
 }
 void refreshList() {
    // reload
    setState(() {
      _listFuture = _fetchdata();
      

    });
    print(_listFuture);
  }
 String city_id;
  
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Blogs'),
        backgroundColor: Color(0Xffb22020),
      ),
      body: 
      SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
             DropDownField(
                                    value: city_id,
                                    icon: Icon(Icons.location_city),
                                    required: false,
                                    hintText: 'Choose a city',
                                    labelText: 'City *',
                                    items: cities,
                                    strict: false,
                                    onValueChanged: (dynamic value){ city_id=value;},
                                    controller: locationcontroller,
                                    ),
           
            
             
            
              RaisedButton(onPressed: (){
                print(locationcontroller.text);
                
               
                _fetchdata();
                refreshList();
              },
              child: Text("SEARCH" ,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 22,),),
              ),
              SizedBox(height:20),

            FutureBuilder(
                    future: _listFuture,
                    builder: (BuildContext context , AsyncSnapshot snapshot){
                       if (!snapshot.hasData){
                  return Center(
                    child: Container(
                      child: Text("Type the Location", style: TextStyle(color: Color(0Xffb22020),fontWeight: FontWeight.w700,fontSize: 35,),) ,

                    ),
                  );
                }
                else{
                                      return ListView.builder
            ( 
                  itemCount: snapshot.data.length,
                  shrinkWrap:true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context,  index) {
                    
                
                    
                    
                     
                   return BlogCard(snapshot.data[index]["location"], "484884",snapshot.data[index]["image1"],snapshot.data[index]["image2"],snapshot.data[index]["image3"],snapshot.data[index]["image4"],snapshot.data[index]["details"]);
                          

                    
                    
                    /*
                      ListTile(
                      title: Text(snapshot.data[index]["email"],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700), ),
                      leading: Icon(Icons.ac_unit),
                      
                     
                    );
                    */
                  }
    );

                    }}),
                    
          ],
        ),
      )
    );
  }
 
} 



