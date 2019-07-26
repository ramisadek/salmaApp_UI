import 'package:flutter/material.dart';

class TextMiniCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width < 600 &&
                      MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width * 0.5
                  : MediaQuery.of(context).size.width < 1000 &&
                          MediaQuery.of(context).orientation ==
                              Orientation.landscape
                      ? MediaQuery.of(context).size.width * 0.5
                      : MediaQuery.of(context).size.width > 1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                          ? MediaQuery.of(context).size.width * 0.3
                          : MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width < 600 &&
                      MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height * 0.23
                  : MediaQuery.of(context).size.width < 1000 &&
                          MediaQuery.of(context).orientation ==
                              Orientation.landscape
                      ? MediaQuery.of(context).size.height * 0.5
                      : MediaQuery.of(context).size.width > 1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                          ? MediaQuery.of(context).size.height * 0.4
                          : MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                  /// image:,
                  color: Colors.blueAccent),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.58,
                          child: Container(
                            margin: EdgeInsets.only(left: 15, top: 10),
                            // padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width < 600 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                ? MediaQuery.of(context).size.width * 0.07
                                : MediaQuery.of(context).size.width < 1000 &&
                                        MediaQuery.of(context).orientation ==
                                            Orientation.landscape
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width >
                                                1000 &&
                                            MediaQuery.of(context)
                                                    .orientation ==
                                                Orientation.landscape
                                        ? MediaQuery.of(context).size.width *
                                            0.3
                                        : MediaQuery.of(context).size.width *
                                            0.7,
                            height: MediaQuery.of(context).size.width < 600 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                ? MediaQuery.of(context).size.width * 0.07
                                : MediaQuery.of(context).size.width < 1000 &&
                                        MediaQuery.of(context).orientation ==
                                            Orientation.landscape
                                    ? MediaQuery.of(context).size.width * 0.5
                                    : MediaQuery.of(context).size.width >
                                                1000 &&
                                            MediaQuery.of(context)
                                                    .orientation ==
                                                Orientation.landscape
                                        ? MediaQuery.of(context).size.width *
                                            0.4
                                        : MediaQuery.of(context).size.width *
                                            0.4,

                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xFF161616)),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 15, top: 10),
                          width: MediaQuery.of(context).size.width < 600 &&
                                  MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.07
                              : MediaQuery.of(context).size.width < 1000 &&
                                      MediaQuery.of(context).orientation ==
                                          Orientation.landscape
                                  ? MediaQuery.of(context).size.width * 0.5
                                  : MediaQuery.of(context).size.width > 1000 &&
                                          MediaQuery.of(context).orientation ==
                                              Orientation.landscape
                                      ? MediaQuery.of(context).size.width * 0.3
                                      : MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.width < 600 &&
                                  MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.07
                              : MediaQuery.of(context).size.width < 1000 &&
                                      MediaQuery.of(context).orientation ==
                                          Orientation.landscape
                                  ? MediaQuery.of(context).size.width * 0.5
                                  : MediaQuery.of(context).size.width > 1000 &&
                                          MediaQuery.of(context).orientation ==
                                              Orientation.landscape
                                      ? MediaQuery.of(context).size.width * 0.4
                                      : MediaQuery.of(context).size.width * 0.4,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.height > 1000 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                ? 25
                                : MediaQuery.of(context).size.height > 800 &&
                                        MediaQuery.of(context).orientation ==
                                            Orientation.landscape
                                    ? 25
                                    : 14,
                          ),
                        ),
                      ],
                    ),
                    onTap: null,
                  ),
                  Center(
                      child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.58,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width < 600 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.3
                              : MediaQuery.of(context).size.width < 1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                              ? MediaQuery.of(context).size.width * 0.5
                              : MediaQuery.of(context).size.width > 1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                              ? MediaQuery.of(context).size.width * 0.3
                              : MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Theme.of(context).indicatorColor),
                          alignment: Alignment.center,
                          child: Opacity(
                            opacity: 0.0,
                            child: Text('this is a long',textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width < 600 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.3
                            : MediaQuery.of(context).size.width < 1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? MediaQuery.of(context).size.width * 0.5
                            : MediaQuery.of(context).size.width > 1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? MediaQuery.of(context).size.width * 0.3
                            : MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                        alignment: Alignment.center,
                        child: Text('this is a long',textAlign: TextAlign.center,style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: Theme.of(context).textSelectionColor,fontSize: MediaQuery.of(context).size.height >
                            1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 18
                            : MediaQuery.of(context).size.height > 800 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 18
                            : 12,),),
                      ),
                    ],
                  )),
                ],
              )),
        ],
      ),
    );
  }
}
