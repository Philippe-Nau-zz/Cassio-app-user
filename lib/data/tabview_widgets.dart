import 'package:cassio_user_app/views/allergies_page.dart';
import 'package:cassio_user_app/views/drugs_page.dart';
import 'package:cassio_user_app/views/pathologies_page.dart';
import 'package:cassio_user_app/views/profile_page.dart';
import 'package:cassio_user_app/views/surgeries_page.dart';
import 'package:flutter/cupertino.dart';

// ignore: non_constant_identifier_names
final List<Widget> TABVIEW_ITENS = [
  ProfilePage(),
  AllergiesPage(),
  SurgeriesPage(),
  PathologiesPage(),
  DrugsPage(),
];
