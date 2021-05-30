import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String textCard;
  CardWidget({@required this.textCard , @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 90.0,
            ),
            SizedBox(height: 7.0),
            Text(textCard,
                style: TextStyle(
                    fontSize: 20.0,
                    color : Colors.white54
                ) )
          ],
        )
    );
  }
}
