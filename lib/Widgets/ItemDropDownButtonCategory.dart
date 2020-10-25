import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ItemDropDownButtonCategory{
  final String label;
  final Icon icon;

  ItemDropDownButtonCategory(this.label,this.icon);
  static List<ItemDropDownButtonCategory> list =[
    ItemDropDownButtonCategory("Appartement",Icon( FontAwesomeIcons.building,)),
    ItemDropDownButtonCategory("Hotel",Icon( FontAwesomeIcons.hotel,)),
    ItemDropDownButtonCategory("Villa",Icon( FontAwesomeIcons.home,)),
    ItemDropDownButtonCategory("Bureau",Icon( FontAwesomeIcons.chair,)),
  ];
}