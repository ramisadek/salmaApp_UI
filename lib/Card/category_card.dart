import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  bool isSelected;
  CategoryCard(this.isSelected);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: isSelected? Theme.of(context).buttonColor : Theme.of(context).primaryColor,
        ),
        alignment: Alignment.center,
        child: Text("Sleeeeep",style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300,color: isSelected? Theme.of(context).disabledColor :Theme.of(context).canvasColor,fontSize: MediaQuery.of(context).size.height >
            1000 &&
            MediaQuery.of(context).orientation ==
                Orientation.portrait
            ? 18
            : MediaQuery.of(context).size.height > 800 &&
            MediaQuery.of(context).orientation ==
                Orientation.landscape
            ? 18
            : 14,),),
      ),
      onTap: null,
    );
  }
}
