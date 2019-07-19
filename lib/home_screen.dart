import 'package:flutter/material.dart';

import 'Card/DailyPulse_card.dart';
import 'Card/prayTime_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: LayoutBuilder(
        builder: (context,con){
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top+30)),
                Stack(
                  ///stack here to make the container ever after in the center if i use row it will now be in the center auto
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).padding.left+15),
                      child: Text("Today",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500),textScaleFactor: 1,),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: Container(
                          width: 20,
                          child: Placeholder(
                            fallbackHeight: 20,
                            fallbackWidth: 20,
                            color: Colors.red,
                          ),
                        )
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                PrayTimeCard(),
                Padding(padding: EdgeInsets.only(top: 20)),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).padding.left+15),
                  child: Text("Daily Pulse",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500),textScaleFactor: 1,),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      DailyPulseCard(),
                      DailyPulseCard(),
                      DailyPulseCard(),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: Container(
                    width: con.maxHeight>600 ? MediaQuery.of(context).size.width*0.3 : MediaQuery.of(context).size.width*0.35,
                    height: con.maxHeight>600 ? MediaQuery.of(context).size.height*0.05 :  MediaQuery.of(context).size.height*0.07,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Theme.of(context).primaryColor,width: 2)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Placeholder(
                          fallbackHeight: 20,
                          fallbackWidth: 20,
                          color: Colors.red,
                        ),
                        Opacity(
                          opacity: 0.68,
                          child: Text(" Unlock Premium",style: Theme.of(context).textTheme.title.copyWith(fontSize: con.maxWidth>600 ? 18 : 12,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )
    );
  }
}
