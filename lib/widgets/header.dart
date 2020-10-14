import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FlutterLogo(
                  size: 30,
                ),
                Text(
                  'C.A.S.S.I.O',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: FlutterLogo(
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
