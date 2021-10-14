import 'package:flutter/material.dart';

enum SingingCharacter { addition, subtraction, multiplication, division }

/// This is the stateful widget that the main application instantiates.
class RadioButtonsOptions extends StatefulWidget {
  const RadioButtonsOptions({Key? key}) : super(key: key);

  @override
  State<RadioButtonsOptions> createState() => _RadioButtonsOptionsState();
}

/// This is the private State class that goes with RadioButtonsOptions.
class _RadioButtonsOptionsState extends State<RadioButtonsOptions> {
  SingingCharacter? _character = SingingCharacter.addition;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Adição'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.addition,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Subtração'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.subtraction,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Multiplicação'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.multiplication,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Divisão'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.division,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
