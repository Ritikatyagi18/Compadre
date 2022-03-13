import 'package:compadre_app/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'info.dart';
import '../services/locator.dart';

class InitialPage extends StatefulWidget {
  InitialPage({Key ? key}) : super(key: key);
  static String id = 'initial';



  @override
  _InitialPageState createState() => _InitialPageState();
}


class _InitialPageState extends State<InitialPage>{
  final page=[
    //first page:
    Container(
      color: Color(0xFF7F7689),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          Center(
            child:Image.asset("assets/images/first.jpg",
              width: 400.0, ),

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Compadre",
                  style: TextStyle(
                    fontSize:30.0,
                    color: Color(0xFFA1B6CC),
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.black38),
                Text(
                    "The perfect buddy to maintain \n& plan your schedule",
                    style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize:16.0,
                    )
                )

              ],
            ),
          ),
        ],

      ),
    ),
    //second page:
    Container(
        color: Color(0xFFdf8879),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,


            children:[
              Positioned(
                top:0.0,
                right: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      icon: Icon(Icons.info,color: Colors.black54,),
                      onPressed: () {
                        locator<NavigationService>().navigateTo('info');
                        // Navigator.pushNamed(context,'info');
                        //Navigator.pushNamed( context,'info' );


                      }),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[




                        Text(
                          "Let's Get Started...",
                          style:TextStyle(
                              fontSize:30,
                              fontWeight: FontWeight.w100
                          ),

                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                            onTap: () {
                              locator<NavigationService>().navigateTo('tasks');
                            },
                            child:Container(
                                height:240.0,
                                width:300.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Color(0xFF7F7689).withOpacity(0.5),

                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Using Time Effectively, Not Just Efficiently\nUse Eisenhower's Principle to note down all your tasks.",
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ]

                                )
                            )

                        ),
                        SizedBox(height:15.0,),


                      ]))
            ])

    )

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: LiquidSwipe(
        pages: page,
        enableLoop: true,
        fullTransitionValue: 600,
        positionSlideIcon: 0.8,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        waveType: WaveType.liquidReveal,
      ),


    );



  }}