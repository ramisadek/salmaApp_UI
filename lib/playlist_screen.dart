import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            bottom: PreferredSize(
                child: Container(
                  width: MediaQuery.of(context).size.width < 600 &&
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                      ? MediaQuery.of(context).size.width * 0.45
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
                      ? MediaQuery.of(context).size.height * 0.07
                      : MediaQuery.of(context).size.width < 1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                          ? MediaQuery.of(context).size.height * 0.5
                          : MediaQuery.of(context).size.width > 1000 &&
                                  MediaQuery.of(context).orientation ==
                                      Orientation.landscape
                              ? MediaQuery.of(context).size.height * 0.4
                              : MediaQuery.of(context).size.height * 0.4,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Theme.of(context).cardColor),
                  child: Text(
                    "Play",
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
                                  : 12,
                        ),
                    textScaleFactor: 1,
                  ),
                ),
                preferredSize: Size(200, 50)),
            expandedHeight: MediaQuery.of(context).size.width < 600 &&
                    MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.25
                : MediaQuery.of(context).size.width < 1000 &&
                        MediaQuery.of(context).orientation ==
                            Orientation.landscape
                    ? MediaQuery.of(context).size.height * 0.5
                    : MediaQuery.of(context).size.width > 1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.landscape
                        ? MediaQuery.of(context).size.height * 0.4
                        : MediaQuery.of(context).size.height * 0.4,
            leading: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Icon(Icons.arrow_back_ios),
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30, right: 20),
                child: Icon(Icons.share),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Text("hello world"),
              ),
              centerTitle: true,
              background: Column(
                children: <Widget>[
                  Container(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width < 600 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.25
                        : MediaQuery.of(context).size.width < 1000 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                            ? MediaQuery.of(context).size.height * 0.5
                            : MediaQuery.of(context).size.width > 1000 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.landscape
                                ? MediaQuery.of(context).size.height * 0.4
                                : MediaQuery.of(context).size.height * 0.4,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Container(),
            leading: Container(),
            //bottom:
            /// ------------------------on development please come later--------------------------
          ),
        ),
      )
    ));
  }
}
