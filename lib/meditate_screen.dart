import 'package:flutter/material.dart';

import 'Card/text_mini_Card.dart';

class MeditateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left:20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Meditate",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height >
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
                                Icons.search,
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
                              Icons.search,
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
                    TextMiniCard(),
                    TextMiniCard(),
                    TextMiniCard(),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),


          ],
        ),
      ),
    );
  }
}
