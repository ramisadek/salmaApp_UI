import 'package:flutter/material.dart';

class PrayTimeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom + 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(45), bottomLeft: Radius.circular(45)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).padding.left + 23,
                right: MediaQuery.of(context).padding.right + 26),
            child: Row(
              /// this row for the mosqu and the text on the left
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      /// this row for the bell and pray name
                      children: <Widget>[
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
                                    color: Theme.of(context).selectedRowColor,
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
                        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).padding.right+10)),
                        Opacity(
                          opacity: 0.76,
                          child: Text("Magrib",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 30 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 30 : 25),textScaleFactor: 1,),
                        ),
                      ],
                    ),
                    Text("6:32"+" PM",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 36 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 36 : 31),textScaleFactor: 1,),
                    Text("in "+"25"+" Minutes",style: TextStyle(fontWeight: FontWeight.w100,fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 20 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 20 : 15,fontFamily: 'SFPro',color: Color(0xFFc9c9c9)),textScaleFactor: 1,),
                  ],
                ),
                Placeholder(
                  fallbackWidth: 100,
                  fallbackHeight: 100,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text("All Times for Hamiltion",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,color: Theme.of(context).highlightColor,fontSize: MediaQuery.of(context).size.height >1000 && MediaQuery.of(context).orientation==Orientation.portrait ? 20 : MediaQuery.of(context).size.height >800 && MediaQuery.of(context).orientation==Orientation.landscape ? 20 : 15),textScaleFactor: 1,)
        ],
      ),
    );
  }
}
