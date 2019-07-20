import 'package:flutter/material.dart';

import 'Card/category_card.dart';
import 'Card/mini_card.dart';
import 'Card/wide_card.dart';

class SleepScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Sleep",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height >
                        1000 &&
                        MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 31
                        : MediaQuery.of(context).size.height > 800 &&
                        MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? 31
                        : 26,),textScaleFactor: 1,),
                    InkWell(
                      child: Stack(
                        /// this stack to separate the opacity of the box from the alarm icon
                        children: <Widget>[
                          Opacity(
                            opacity: 0.29,
                            child: Container(
                              alignment: Alignment.center,
                              // margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(5),
                              child: Opacity(
                                opacity: 0,
                                child: Icon(
                                  Icons.notifications,
                                  size: MediaQuery.of(context).size.height >
                                      1000 &&
                                      MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? 25
                                      : MediaQuery.of(context).size.height > 800 &&
                                      MediaQuery.of(context).orientation ==
                                          Orientation.landscape
                                      ? 25
                                      : 20,
                                ),
                              ), // i put the bell here to make the size of this container as the below
                              decoration: BoxDecoration(
                                  color: Color(0xFFd8d8d8),
                                  border: Border.all(
                                      color: Color(0xFF979797),
                                      width: 2
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          /// this container is for the icon and have the same padding as the above for optimizing on different devices
                          Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.bottomRight,
                            child: Opacity(
                              opacity: 0.88,
                              child: Icon(
                                Icons.notifications,
                                color: Theme.of(context).textSelectionColor,
                                size: MediaQuery.of(context).size.height >
                                    1000 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 25
                                    : MediaQuery.of(context).size.height > 800 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.landscape
                                    ? 25
                                    : 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent,
                                    width: 2
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                          )
                        ],
                      ),
                      onTap: null,
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CategoryCard(true),
                      CategoryCard(false),
                      CategoryCard(false),
                      CategoryCard(false),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text("Featured Sleep Series",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height >
                  1000 &&
                  MediaQuery.of(context).orientation ==
                      Orientation.portrait
                  ? 31
                  : MediaQuery.of(context).size.height > 800 &&
                  MediaQuery.of(context).orientation ==
                      Orientation.landscape
                  ? 31
                  : 26,),textScaleFactor: 1,),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MiniCard(),
                      MiniCard(),
                      MiniCard(),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text("All Sleep",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height >
                  1000 &&
                  MediaQuery.of(context).orientation ==
                      Orientation.portrait
                  ? 31
                  : MediaQuery.of(context).size.height > 800 &&
                  MediaQuery.of(context).orientation ==
                      Orientation.landscape
                  ? 31
                  : 26,),textScaleFactor: 1,),
              Padding(padding: EdgeInsets.only(top: 10)),
              WideCard(),
            ],
          ),
        )
      ),
    );
  }
}
