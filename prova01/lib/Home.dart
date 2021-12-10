import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double number01 = 0;
  double number02 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
            child: const Opacity(
              opacity: 0.5,
              child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLARyiFtm-My8GxteJ7-1yD_QCuORq2f7MeQ&usqp=CAU')),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => number01 = 0);
                    } else {
                      setState(() {
                        number01 = double.parse(value);
                      });
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Número 01',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() => number02 = 0);
                    } else {
                      setState(() {
                        number02 = double.parse(value);
                      });
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Número 02',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 30),
            child: Text(
              'Escolha a opção desejada: ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = number01 + number02;
                    });
                  },
                  child: Text('Adição'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = number01 - number02;
                    });
                  },
                  child: Text('Subtração'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = number01 * number02;
                    });
                  },
                  child: Text('Multiplicação'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = number01 / number02;
                    });
                  },
                  child: Text('Divisão'),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 30),
            child: Text('Resultado: ' + result.toString(),
                style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}
