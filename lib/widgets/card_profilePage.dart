import 'package:flutter/material.dart';

class CardProfilePage extends StatelessWidget {
  final List<Widget> listColumn;
  final String title;

  CardProfilePage({
    this.listColumn,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
              ),
              child: Text(
                this.title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: this.listColumn,
              ),
            )
          ],
        ),
      ),
    );
  }
}
