import 'package:cassio_user_app/controllers/tabview_controller.dart';
import 'package:cassio_user_app/data/tabview_widgets.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabViewPages extends StatelessWidget {
  final _items = TABVIEW_ITENS;

  @override
  Widget build(BuildContext context) {
    return GetX<TabViewController>(
      init: TabViewController(),
      builder: (_) => DefaultTabController(
        length: _items.length,
        initialIndex: _.initialIndex,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.blue),
          ),
          body: TabBarView(
            children: _items.map((e) => e).toList(growable: false),
          ),
          bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(
                title: 'Perfil',
                icon: Image.asset(
                  'assets/images/head.png',
                ),
              ),
              TabItem(
                title: 'Alergias',
                icon: Image.asset(
                  'assets/images/alergias.png',
                ),
              ),
              TabItem(
                title: 'Cirurgias',
                icon: Image.asset(
                  'assets/images/bisturi.png',
                ),
              ),
              TabItem(
                title: 'Patologias',
                icon: Image.asset(
                  'assets/images/pathologies.png',
                ),
              ),
              TabItem(
                title: 'Remédios',
                icon: Image.asset(
                  'assets/images/drugs_blue.png',
                ),
              ),
            ],
            color: Colors.white70,
            elevation: 5,
            height: 60,
            top: -10,
            style: TabStyle.titled,
          ),
        ),
      ),
    );
  }
}
