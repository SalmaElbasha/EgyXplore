import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:egyxplore/widgets/custom_back_button.dart';
import 'package:egyxplore/widgets/custom_container_button.dart';

class ChooseTheLanguage extends StatefulWidget {
  const ChooseTheLanguage({super.key});

  @override
  _ChooseTheLanguageState createState() => _ChooseTheLanguageState();
}

class _ChooseTheLanguageState extends State<ChooseTheLanguage> {
  String? selectedCountry;
  final List<Map<String, String>> countries = [
    {"name": "German", "code": "DE"},
    {"name": "French", "code": "FR"},
    {"name": "Arabic", "code": "EG"},
    {"name": "English", "code": "US"},
    {"name": "Italian", "code": "IT"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackButton(onBackTap: () {}),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose the Language",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Customize your experience by\nselecting your preferred language.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff737373),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Center(
                child: SizedBox(
                  width: Get.width * 0.7,
                  height: 43,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search, color: Colors.brown),
                      hintStyle: TextStyle(color: Colors.brown, fontSize: 16),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.brown, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.brown, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.brown, width: 2),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  width: Get.width * 0.7,
                  height: 61,
                  child: DropdownButtonFormField<String>(
                    value: selectedCountry,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Choose language",
                      labelStyle: const TextStyle(
                        color: Colors.brown,
                        fontSize: 16,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.brown, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                        const BorderSide(color: Colors.brown, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                        const BorderSide(color: Colors.brown, width: 2.0),
                      ),
                    ),
                    items: countries.map((country) {
                      return DropdownMenuItem<String>(
                        value: country['name'],
                        child: Row(
                          children: [
                            CountryFlag.fromCountryCode(
                              country['code']!,
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 10),
                            Text(country['name']!),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                CustomContainerButton(
                  text: 'Confirm',
                  onTap: () {},
                  backgroundColor: Color(0xffC3AC8E),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
