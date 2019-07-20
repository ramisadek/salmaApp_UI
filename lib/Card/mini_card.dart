import 'package:flutter/material.dart';

class MiniCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width < 600 &&
                        MediaQuery.of(context).orientation ==
                            Orientation.portrait
                    ? MediaQuery.of(context).size.width * 0.35
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
                    ? MediaQuery.of(context).size.height * 0.15
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
                child: InkWell(
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
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 10)),
            Text(
              "Whatever this is",
              style: Theme.of(context).textTheme.title.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.height > 1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.portrait
                        ? 18
                        : MediaQuery.of(context).size.height > 800 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                            ? 18
                            : 14,
                  ),
              textScaleFactor: 1.0,
            ),
            Text(
              "Whatever this is again",
              style: Theme.of(context).textTheme.title.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).canvasColor,
                    fontSize: MediaQuery.of(context).size.height > 1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.portrait
                        ? 18
                        : MediaQuery.of(context).size.height > 800 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                            ? 18
                            : 12,
                  ),
              textScaleFactor: 1.0,
            ),
          ],
        ),
      ),
      onTap: null,
    );
  }
}
