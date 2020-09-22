import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';

//these are for calling option
class CallsAndMessagesService {
  void call(String number) => launch("tel:$number");
}

GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}

final CallsAndMessagesService _service = locator<CallsAndMessagesService>();

class TransportCard extends StatefulWidget {
  final String bus;

  final String phone;
  final String web;
  final String ticketnonac;
  final String ticketac;
  final String logolink;
  final String timing;

  TransportCard(this.bus, this.phone, this.web, this.logolink, this.timing,
      this.ticketnonac, this.ticketac);

  @override
  _TransportCardState createState() => _TransportCardState();
}

class _TransportCardState extends State<TransportCard> {
  _launchURL() async {
    if (await canLaunch(widget.web)) {
      await launch(
        widget.web,
        forceSafariVC: false,
        enableJavaScript: true,
        forceWebView: true,
      );
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        // borderOnForeground: true ,
        //   elevation: 20,
        color: Colors.white,
        child: Container(
         // width: 100,
          height:130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              shape: BoxShape.rectangle,
              border: Border.all(color: Color(0Xffb22020), width: 2),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    width: 50,
                    child: Image.network(widget.logolink), //for the logo of bus
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            widget.bus,
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 10),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: 'Timings: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0Xffb22020),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: widget.timing,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Non-AC: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: widget.ticketnonac,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'AC: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: widget.ticketac,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.call),
                              color: Colors.green,
                              onPressed: () => _service.call(widget.phone),
                            ),
                            IconButton(
                              icon: Icon(Icons.web),
                              onPressed: _launchURL,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
