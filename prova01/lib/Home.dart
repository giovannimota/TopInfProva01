import 'package:flutter/material.dart';
import 'package:prova01/widgets/radioButtons.dart';
import 'package:prova01/widgets/numbersForm.dart';
import 'package:prova01/widgets/resultForm.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        children: [
          NumbersForm(),
          Text('Escolha a opção desejada: '),
          RadioButtonsOptions(),
          ResultForm()
        ],
      ),
    );
  }
}
