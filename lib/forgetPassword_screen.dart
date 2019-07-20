import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Theme.of(context).textSelectionColor,),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20,bottom: MediaQuery.of(context).padding.bottom+70,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Forogt Password?",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: MediaQuery.of(context).size.height >
                1000 &&
                MediaQuery.of(context).orientation ==
                    Orientation.portrait
                ? 25
                : MediaQuery.of(context).size.height > 800 &&
                MediaQuery.of(context).orientation ==
                    Orientation.landscape
                ? 25
                : 20,
            ),textScaleFactor: 1,),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text("Enter your email for reset your password",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: Theme.of(context).canvasColor,fontSize: MediaQuery.of(context).size.height >
                1000 &&
                MediaQuery.of(context).orientation ==
                    Orientation.portrait
                ? 19
                : MediaQuery.of(context).size.height > 800 &&
                MediaQuery.of(context).orientation ==
                    Orientation.landscape
                ? 19
                : 14,
            ),textScaleFactor: 1,),
            Spacer(),
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
            Padding(padding: EdgeInsets.only(top: 20)),
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
          ],
        ),
      )
    );
  }
}
