class Wilaya {
  String _label;
  int _matricule;
  String _descreption;
  String _image;

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  Wilaya(this._label,this._matricule,this._descreption,this._image);

  String get descreption => _descreption;
  set descreption(String desc)
  {
    _descreption=desc;
  }
  String get label => _label;

  set label(String value) {
    _label = value;
  }

  int get matricule => _matricule;

  set matricule(int value) {
    _matricule = value;
  }
}