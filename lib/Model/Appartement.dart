import 'package:airbnb_clone/Model/Address.dart';
import 'package:airbnb_clone/Model/Property.dart';

class appartement extends Property{
  bool endroitEntier;
  bool chambrePartage;
  bool equipe;

  appartement(String titre, List<String> images, int prix, Address address, String descreption, double raiting, Commodite commodite,this.endroitEntier,this.chambrePartage,this.equipe,)
 :   super(
        titre,
        images,
        prix,
        address,
        descreption,
        raiting,
        commodite);
}