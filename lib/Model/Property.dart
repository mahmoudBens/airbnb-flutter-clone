import 'package:airbnb_clone/Model/Address.dart';

abstract class Property {
  String _titre;
  List<String> _images;
  int _prix;
  Address _address;
  String _descreption;
  double _raiting;
  Commodite _commodite;


  Commodite get commodite => _commodite;


  Address get address => _address;

  set address(Address value) {
    _address = value;
  }

  set commodite(Commodite value) {
    _commodite = value;
  }

  String get titre => _titre;

  set titre(String value) {
    _titre = value;
  }



  Property( this._titre,
  this._images,
  this._prix,
  this._address,
  this._descreption,
  this._raiting,
  this._commodite,
   );




  List<String> get images => _images;

  set images(List<String> value) {
    _images = value;
  }

  int get prix => _prix;

  set prix(int value) {
    _prix = value;
  }


  String get descreption => _descreption;

  set descreption(String value) {
    _descreption = value;
  }

  double get raiting => _raiting;

  set raiting(double value) {
    _raiting = value;
  }
}



class Commodite {
  bool InterdectionFumee ;
  bool serviceDeChambre;
  bool piscine;
  bool gym;
  bool repasInclus;
  bool wifi;
  bool enfantAutorise;
  bool Parking;
  bool equipe;

  Commodite(this.InterdectionFumee, this.serviceDeChambre, this.piscine,
      this.gym, this.repasInclus, this.wifi, this.enfantAutorise, this.Parking,this.equipe);
}

