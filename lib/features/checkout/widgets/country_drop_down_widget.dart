import '../../../core/helpers/public_imports.dart';
import '../data/models/country_model.dart';

class CountryDropdownWidget extends StatefulWidget {
  const CountryDropdownWidget({super.key});

  @override
  _CountryDropdownWidgetState createState() => _CountryDropdownWidgetState();
}

class _CountryDropdownWidgetState extends State<CountryDropdownWidget> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButtonFormField<String>(
        value: selectedCountry,
        decoration: InputDecoration(
          labelText: AppStrings.country,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lighterGrayColor,
              width: 1.0.w,
            ),
          ),
          isDense: true,
        ),
        items: countryList.map((country) {
          return DropdownMenuItem<String>(
            value: country.code,
            child: Text(country.name),
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
