import 'package:flutter/material.dart';
import 'package:gem_store_app/core/theming/app_colors.dart';

class CountryDropdownWidget extends StatefulWidget {
  const CountryDropdownWidget({super.key});

  @override
  _CountryDropdownWidgetState createState() => _CountryDropdownWidgetState();
}

class _CountryDropdownWidgetState extends State<CountryDropdownWidget> {
  String? selectedCountry;

  final List<Map<String, String>> countryList = [
    {"name": "Afghanistan", "code": "AF"},
    {"name": "Albania", "code": "AL"},
    {"name": "Egypt", "code": "EG"},
    {"name": "United States", "code": "US"},
    {"name": "France", "code": "FR"},
    {"name": "Germany", "code": "DE"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButtonFormField<String>(
        value: selectedCountry,
        decoration: InputDecoration(
          labelText: "Country *",
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lighterGrayColor,
              width: 1.0,
            ),
          ),
          isDense: true,
        ),
        items: countryList.map((country) {
          return DropdownMenuItem<String>(
            value: country['code'],
            child: Text(country['name']!),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedCountry = value;
          });
        },
      ),
    );
  }
}
