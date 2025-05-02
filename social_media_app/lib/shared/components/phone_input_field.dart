import 'package:flutter/material.dart';

class PhoneInputField extends StatefulWidget {
  final TextEditingController? controller;
  const PhoneInputField({Key? key, this.controller}) : super(key: key);

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  String _selectedCode = '+234';
  final List<Map<String, String>> _countries = [
    {'name': 'Nigeria', 'code': '+234', 'flag': '🇳🇬'},
    {'name': 'Ghana', 'code': '+233', 'flag': '🇬🇭'},
    {'name': 'Cameroon', 'code': '+237', 'flag': '🇨🇲'},
    {'name': 'Niger', 'code': '+227', 'flag': '🇳🇪'},
    {'name': 'America', 'code': '+1', 'flag': '🇺🇸'},
    {'name': 'Canada', 'code': '+1', 'flag': '🇨🇦'},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<String>(
          value: _selectedCode,
          underline: SizedBox(),
          items: _countries.map((country) {
            return DropdownMenuItem<String>(
              value: country['code'],
              child: Row(
                children: [
                  Text(country['flag'] ?? ''),
                  SizedBox(width: 4),
                  Text(country['code'] ?? ''),
                ],
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedCode = value!;
            });
          },
        ),
        SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: widget.controller,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: '8025557595',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            ),
          ),
        ),
      ],
    );
  }
} 