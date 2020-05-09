import 'package:flutter/material.dart';
import 'package:inotech/datamodels/navbar_item_mobile.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;
  NavBarItemTabletDesktop({this.model});
  
  @override
  Widget build(
    BuildContext context,
  ) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }
}
