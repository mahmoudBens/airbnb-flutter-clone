import 'dart:ui';

import 'package:airbnb_clone/Model/Address.dart';
import 'package:airbnb_clone/Model/Hotel.dart';
import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Model/Wilaya.dart';
import 'package:airbnb_clone/Model/Appartement.dart';
class Constants {

  static List<Property> properties=[
    Hotel(
      "hotel",
      ['assets/images/properties/p1.jpg',"assets/images/properties/p2.jpg"],
      5000,
      Address("Algerie", "Blida", "Boufarik", "el mo9rani", "15", "09025"),
      "description  qui peut depasser 3 lignes donc la suite sera cachée until clicking the button afficher la suite pour l'afficher. voici une démonstration qui le fait ",
    4.2,
      Commodite(true, true, false, true, true, true, true, true, true),
  true,
  false,
  true,
    ),

    appartement(
      "appartement",
      ['assets/images/properties/p1.jpg',"assets/images/properties/p2.jpg"],
      2500,
      Address("Algerie", "Alger", "Reghaia", "el hadad", "55", "16025"),
      "description  qui peut depasser 3 lignes donc la suite sera cachée until clicking the button afficher la suite pour l'afficher. voici une démonstration qui le fait ",
      4.0,
      Commodite(true, true, false, true, true, true, true, true, true),
      true,
      false,
      true,
    ),
  ];


  static List<Wilaya> wilayas=[
    Wilaya("Alger",16,"Ville sur plage avec des monuments touristiques","assets/images/properties/p1.jpg"),
  Wilaya("Oran",31,"Ville sur plage avec des monuments touristiques","assets/images/properties/p2.jpg"),
  Wilaya("Blida",09,"Ville avec des monuments touristiques et forets","assets/images/properties/p3.jpg"),
  Wilaya("Gherdaia",47,"Ville du sahara avec des monuments historiques","assets/images/properties/p4.jpg"),
  ];


  static Color redAirbnb= Color(0xffFF5A5F);
  static Color greenAirbnb= Color(0xff00A699);

}