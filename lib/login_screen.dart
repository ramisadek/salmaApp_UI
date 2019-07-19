import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/Images/Tlogo.png',
                    scale: 2.7,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Login",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize:
                      MediaQuery.of(context).size.height >
                          1000 &&
                          MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 25
                          : MediaQuery.of(context).size.height > 800 &&
                          MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? 25
                          : 20,),textScaleFactor: 1,),
                      Padding(padding: EdgeInsets.only(bottom: 20)),
                      TextField(
                        style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).canvasColor
                              ),
                            ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).canvasColor
                            ),
                          ),
                          hintText: "email",
                          hintStyle: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: Theme.of(context).canvasColor,fontSize: MediaQuery.of(context).size.height >
                              1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 18
                              : MediaQuery.of(context).size.height > 800 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                              ? 18
                              : 12,)
                        ),
                      ),
                      TextField(
                        style: Theme.of(context).textTheme.title.copyWith(fontSize: 18),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).canvasColor
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).canvasColor
                              ),
                            ),
                            hintText: "password",
                            hintStyle: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: Theme.of(context).canvasColor,fontSize: MediaQuery.of(context).size.height >
                                1000 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 18
                                : MediaQuery.of(context).size.height > 800 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? 18
                                : 12,)
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 20)),
                      Row(
                        children: <Widget>[
                          InkWell(
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: Theme.of(context).textSelectionColor)
                          ),
                          alignment: Alignment.center,
                          child: Text("Login",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height >
                              1000 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 18
                              : MediaQuery.of(context).size.height > 800 &&
                              MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                              ? 18
                              : 12,
                          ),textScaleFactor: 1,),
                        ),
                        onTap: null,
                      ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width < 600 &&
                                  MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? MediaQuery.of(context).size.width * 0.18
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
                              child: Image.asset('assets/Images/f.png',scale: 25,),
                            ),
                            onTap: null,
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width < 600 &&
                                  MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? MediaQuery.of(context).size.width * 0.18
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
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              child: Image.asset('assets/Images/g.png',scale: 65,),
                            ),
                            onTap: null,
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 20)),
                      InkWell(
                        child: Row(
                          children: <Widget>[
                            Text("need an account? ",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: Theme.of(context).canvasColor,fontSize: MediaQuery.of(context).size.height >
                                1000 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? 18
                                : MediaQuery.of(context).size.height > 800 &&
                                MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? 18
                                : 12,
                            ),),
                            Text(" Sign up",style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).secondaryHeaderColor,fontSize: MediaQuery.of(context).size.height >
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
                      Padding(padding: EdgeInsets.only(bottom: 5)),
                      InkWell(
                        child: Row(
                          children: <Widget>[
                            Text("forgot your password? ",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: Theme.of(context).canvasColor,fontSize: MediaQuery.of(context).size.height >
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
                              textScaleFactor: 1,),
                            Text(" Retrive",style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).secondaryHeaderColor,fontSize: MediaQuery.of(context).size.height >
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
                    ],
                  ),
                )
              )
            ],
          )
        ],
      )
    );
  }
}
