class CountryModel {
  final String name;
  final String code;

  CountryModel({required this.name, required this.code});
}

final List<CountryModel> countryList = [
  CountryModel(name: "Afghanistan", code: "AF"),
  CountryModel(name: "Albania", code: "AL"),
  CountryModel(name: "Egypt", code: "EG"),
  CountryModel(name: "United States", code: "US"),
  CountryModel(name: "France", code: "FR"),
  CountryModel(name: "Germany", code: "DE"),
  CountryModel(name: "Italy", code: "IT"),
  CountryModel(name: "Japan", code: "JP"),
  CountryModel(name: "Kuwait", code: "KW"),
  CountryModel(name: "Morocco", code: "MA"),
];
