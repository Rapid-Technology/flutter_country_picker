import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Country Picker"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          child: const Text("Select Country"),
          onPressed: () {
            showCountryPicker(
              context: context,
              showPhoneCode: true,
              showSearch: true,
              onSelect: (Country country) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(country.name),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
