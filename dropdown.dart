import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> countries = [
    'pakistan',
    'india',
    'bangladesh',
    'America',
    'other'
  ];
  // ignore: non_constant_identifier_names
  String SelectedCountry = "pakistan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,

        child: DropdownButtonFormField<String>(
          
          decoration: const InputDecoration(
           
            contentPadding: EdgeInsets.only(left:20),
            border: OutlineInputBorder(
              borderRadius:  BorderRadius.all(
                 Radius.circular(30.0),
              ),
            ),
          ),
          isExpanded: true,
          // ignore: non_constant_identifier_names
          items: countries.map((String DropDownStringItem) {
            return DropdownMenuItem(
                value: DropDownStringItem,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    DropDownStringItem,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ));
          }).toList(),
        
          onChanged: (String? newCountrySelected) {
            setState(() {
              SelectedCountry = newCountrySelected!;
            });
          },
          value: SelectedCountry,
        ),
      ),
    );
  }
}
