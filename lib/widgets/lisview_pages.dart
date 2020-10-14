import 'dart:ui';

import 'package:flutter/material.dart';

class ListViewPages extends StatelessWidget {
  final double height;
  final double heightTitle;
  final double heightListview;
  final List<dynamic> itemList;
  final String title;
  final Function onTap;

  ListViewPages({
    this.height,
    this.heightTitle,
    this.heightListview,
    this.title,
    this.itemList,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 3),
      height: this.height,
      child: Column(
        children: [
          Container(
            height: this.heightTitle,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: this.onTap,
                  child: Icon(
                    Icons.add,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: this.heightListview,
            child: ListView.builder(
              itemCount: this.itemList.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(5),
                alignment: Alignment.centerLeft,
                height: 50,
                color: Color(0xfff5f6fa),
                child: Text(this.itemList[index].toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
