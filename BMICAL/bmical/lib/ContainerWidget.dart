import 'package:flutter/cupertino.dart';

class ContainerWidget extends StatelessWidget {
  final Color colour;
  final Widget cardwidget;

  ContainerWidget({@required this.colour , this.cardwidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardwidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour ,
          borderRadius: BorderRadius.circular(12.0)
      ),
    );
  }
}

