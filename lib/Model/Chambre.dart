import 'package:airbnb_clone/Model/Property.dart';
import 'package:airbnb_clone/Model/Address.dart';

class Chambre extends Property{
  bool sanitairePrive;
  bool chambrePartage;
  bool equipe;

  Chambre(String titre, List<String> images, int prix, Address address, String descreption, double raiting, Commodite commodite,this.sanitairePrive,this.chambrePartage,this.equipe,)
      :   super(
      titre,
      images,
      prix,
      address,
      descreption,
      raiting,
      commodite);
}
