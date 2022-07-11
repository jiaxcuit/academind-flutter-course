import 'package:flutter/material.dart';

class StartingpageforeveryoneWidget extends StatefulWidget {
  @override
  _StartingpageforeveryoneWidgetState createState() =>
      _StartingpageforeveryoneWidgetState();
}

class _StartingpageforeveryoneWidgetState
    extends State<StartingpageforeveryoneWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator StartingpageforeveryoneWidget - COMPONENT

    return Container(
        width: 400,
        height: 800,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: -33,
              child: Container(
                  width: 400,
                  height: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Color.fromRGBO(183, 255, 220, 1),
                  ),
                  child: Stack(children: <Widget>[]))),
          //Positioned(top: 687, left: 17, child: null),
          Positioned(
              top: 701,
              left: 20,
              child: Text(
                'MY COMMUNITY/ MY PROFILE',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Farro',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 13,
              left: 10,
              child: Container(
                  width: 237,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ))),
          Positioned(
              top: 15,
              left: 200,
              child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 2,
                        left: 2,
                        child: Image.asset(
                          'assets/images/vector.png',
                          //semanticsLabel: 'vector'
                        )),
                  ]))),
          Positioned(
              top: 12,
              left: 260,
              //insert sign in button
              child: GestureDetector(onTap: () {  
  return null;
})), child: Container(  
                  width: 41,
                  height: 43.10256576538086,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 41,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(204, 255, 139, 1),
                            ))),
                    Positioned(
                        top: 9,
                        left: 7,
                        child: Text(
                          'SIGNIN',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Farro',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
      //  ]))),
Positioned(
          top: 20,
              left: 17,
              child:Text(
                'Search for keywords--- Food/Water... for existing cases',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4699999988079071),
                    fontFamily: 'Farro',
                    fontSize: 5,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
       //    Positioned(top: 735, left: 16, child:Null ),
          Positioned(
              top: 9,
              left: 306,
              child: Container(
                  width: 39,
                  height: 39,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 56, 56),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: -7.152557373046875e-7,
                        left: -7.152557373046875e-7,
                        child: Image.asset(
                          'assets/images/vector (1).png',
                          //semanticsLabel: 'vector'
                        )),
                       
                 
          Positioned(
              top: 61,
              left: 14,
              child: Image.asset(
                'assets/images/rectangle41.png',
                //semanticsLabel: 'rectangle41'
              )),

          Positioned(
              top: 424,
              left: 17,
              child: Container(
                  width: 324,
                  height: 168,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 172,
                        child: Container(
                            width: 152,
                            height: 168,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 152,
                                      height: 168,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        border: Border.all(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 15,
                                  left: 25.16556167602539,
                                  child: Text(
                                    'OfferHelp',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Farro',
                                        fontSize: 20,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 151,
                            height: 168,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 151,
                                      height: 168,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        border: Border.all(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 15,
                                  left: 15,
                                  child: Text(
                                    'Request Help',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Farro',
                                        fontSize: 20,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 610,
              left: 17,
              child: Container(
                  width: 324,
                  height: 66,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ))),
          Positioned(
              top: 623,
              left: 44,
              child: Text(
                'Find Support Nearby',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Farro',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 69,
              left: 26,
              child: Text(
                'Scroll up for more...',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Farro',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 91,
              left: 14,
              child: Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 1)),
          Positioned(
              top: 65,
              left: 204,
              child: Container(
                  width: 131,
                  height: 21,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(196, 243, 255, 1),
                  ),),),
          Positioned(
              top: 68,
              left: 243,
              child: Text(
                'sort',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Farro',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1,),
              )),
     ],),),),],),),
 }
  }