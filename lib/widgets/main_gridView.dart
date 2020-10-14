import 'package:cassio_user_app/data/card_gridview_data.dart';
import 'package:cassio_user_app/models/card_gridview_model.dart';
import 'package:cassio_user_app/widgets/card_mainGridView.dart';
import 'package:flutter/material.dart';

class MainGridView extends StatelessWidget {
  final List<CardGridViewModel> _cardItens = CARDGRIDVIEW_DATA;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
      ),
      itemCount: _cardItens.length,
      itemBuilder: (context, index) => CardMainGridView(
        title: _cardItens[index].title,
        imagePath: _cardItens[index].imagePath,
        initialIndex: _cardItens[index].indexPage,
      ),
    );
  }
}
