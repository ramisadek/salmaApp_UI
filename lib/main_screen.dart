import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(

            ///image:
            ),
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/Images/Tlogo.png',
                scale: 2.7,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width < 600 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.85
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color(0xFF3b5998),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Connect with Facebook",
                        style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.height >
                                        1000 &&
                                    MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                ? 18
                                : MediaQuery.of(context).size.height > 800 &&
                                        MediaQuery.of(context).orientation ==
                                            Orientation.landscape
                                    ? 18
                                    : 12),
                        textScaleFactor: 1.0,
                      ),
                    ),
                    onTap: null,
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width < 600 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.85
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Theme.of(context).cardColor,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Get Started",
                        style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.height >
                                        1000 &&
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
                    ),
                    onTap: null,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already a member?",
                          style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: MediaQuery.of(context).size.height >
                                1000 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 18
                                : MediaQuery.of(context).size.height > 800 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? 18
                                : 12,
                          ),
                          textScaleFactor: 1.0,),
                        Text(" login",style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).secondaryHeaderColor,fontSize: MediaQuery.of(context).size.height >
                            1000 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 18
                            : MediaQuery.of(context).size.height > 800 &&
                            MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 18
                            : 12,
                        ),
                          textScaleFactor: 1.0,),
                      ],
                    ),
                    onTap: null,
                  ),
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
