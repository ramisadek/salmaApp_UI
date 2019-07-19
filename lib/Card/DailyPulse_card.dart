import 'package:flutter/material.dart';

class DailyPulseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:
      MediaQuery.of(context).size.width<600 && MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.width*0.85
          : MediaQuery.of(context).size.width<1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                MediaQuery.of(context).size.width*0.5
          : MediaQuery.of(context).size.width>1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                MediaQuery.of(context).size.width*0.3
          : MediaQuery.of(context).size.width*0.7,
      height:
      MediaQuery.of(context).size.width<600 && MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height*0.38
          : MediaQuery.of(context).size.width<1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                MediaQuery.of(context).size.height*0.5
          : MediaQuery.of(context).size.width>1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                MediaQuery.of(context).size.height*0.4
          : MediaQuery.of(context).size.height*0.4,
      padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top)),
          Text(
            "Meditation",
            style: Theme.of(context).textTheme.title.copyWith(
                fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 20 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 20 : 15,
                color: Theme.of(context).hintColor,
                fontWeight: FontWeight.w500),
            textScaleFactor: 1,
          ),
          Text(
            "Focus on work",
            style: Theme.of(context).textTheme.title.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 25 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 25 : 20),
            textScaleFactor: 1,
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      constraints:
                      BoxConstraints(minHeight: 50, minWidth: 50,maxHeight: 60,maxWidth: 60),
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    //onTap: ()=> debugPrint("${con.maxWidth.toDouble()}"),
                  ),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Text(
                    "10 min",
                    style: Theme.of(context).textTheme.title.copyWith(
                        fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 20 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 20 : 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              InkWell(
                child: Container(
                  width:
                  MediaQuery.of(context).size.width<600 && MediaQuery.of(context).orientation==Orientation.portrait ?
                  MediaQuery.of(context).size.width*0.25
                      : MediaQuery.of(context).size.width<1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                  MediaQuery.of(context).size.width*0.15
                      : MediaQuery.of(context).size.width>1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                  MediaQuery.of(context).size.width*0.13
                      : MediaQuery.of(context).size.width*0.25,
                  height:
                  MediaQuery.of(context).size.width<600 && MediaQuery.of(context).orientation==Orientation.portrait ?
                  MediaQuery.of(context).size.height*0.05
                      : MediaQuery.of(context).size.width<1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                  MediaQuery.of(context).size.height*0.1
                      : MediaQuery.of(context).size.width>1000 && MediaQuery.of(context).orientation==Orientation.landscape ?
                  MediaQuery.of(context).size.height*0.06
                      : MediaQuery.of(context).size.height*0.05,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Text(
                    "Play",
                    style: Theme.of(context).textTheme.title.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 20 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 20 : 15),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
