import 'package:flutter/material.dart';

class WideCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF6ad4d2),Color(0xFF6ac5a2),Colors.transparent],
        )
      ),
    );
  }
}
