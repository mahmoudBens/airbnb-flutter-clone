class Address {
  String _pays;
  String _wilaya;
  String _commune;
  String _rue;
  String _numeroPropriete;
  String _codePostal;

  Address(this._pays, this._wilaya, this._commune, this._rue,
      this._numeroPropriete, this._codePostal);

  String get codePostal => _codePostal;

  set codePostal(String value) {
    _codePostal = value;
  }

  String get numeroPropriete => _numeroPropriete;

  set numeroPropriete(String value) {
    _numeroPropriete = value;
  }

  String get rue => _rue;

  set rue(String value) {
    _rue = value;
  }

  String get commune => _commune;

  set commune(String value) {
    _commune = value;
  }

  String get wilaya => _wilaya;

  set wilaya(String value) {
    _wilaya = value;
  }

  String get pays => _pays;

  set pays(String value) {
    _pays = value;
  }
}