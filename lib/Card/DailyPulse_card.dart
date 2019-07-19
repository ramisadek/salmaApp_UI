import 'package:flutter/material.dart';

class DailyPulseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,con){
        return Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.4,
          padding: EdgeInsets.only(left: 20,bottom: 20,right: 20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top)),
              Text("Meditation",style: Theme.of(context).textTheme.title.copyWith(fontSize: con.maxHeight >600 ? 18 : 12,color: Theme.of(context).hintColor,fontWeight: FontWeight.w500),textScaleFactor: 1,),
              Text("Focus on work",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: con.maxHeight >600 ? 25 :  20),textScaleFactor: 1,),
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top+20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
        child: Container(
          constraints: BoxConstraints(minHeight: 50,minWidth: 50),
          width: MediaQuery.of(context).size.width*0.1,
          height: MediaQuery.of(context).size.width*0.1,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
          ),
        ),
                        //onTap: ()=> debugPrint("${con.maxWidth.toDouble()}"),
        ),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Text("10 min",style: Theme.of(context).textTheme.title.copyWith(fontSize: con.maxHeight >600 ? 18 :  12,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.05,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Text("Play",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w500,fontSize: con.maxHeight >600 ? 20 :  12),),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
