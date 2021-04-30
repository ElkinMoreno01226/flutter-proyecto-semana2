import 'package:flutter/material.dart';
import 'package:imc/paginas/resultados.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _valorDelPeso = 00;

  String _genero = "";

  void _sumarAValorDelPeso() {
    setState(() {
      _valorDelPeso++;
    });
  }

  void _restarAValorDelPeso() {
    setState(() {
      if (_valorDelPeso > 1) {
        _valorDelPeso--;
      }
    });
  }

  int _valorDeEdad = 00;

  void _sumarValorDeEdad() {
    setState(() {
      _valorDeEdad++;
    });
  }

  void _restarValorDeEdad() {
    setState(() {
      if (_valorDeEdad > 1) {
        _valorDeEdad--;
      }
    });
  }

  double _estatura = 60;

  Color color_1 = Color.fromARGB(17, 19, 40, 255);
  Color color_2 = Color.fromARGB(17, 19, 40, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: color_1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  _genero = "m";
                                  color_2 = Color.fromARGB(17, 19, 40, 255);
                                  color_1 = Color.fromARGB(40, 19, 40, 255);
                                });
                              },
                              padding: EdgeInsets.all(40.0),
                              child: Column(
                                children: <Widget>[
                                  new Tab(
                                      icon: new Image.asset(
                                          "assets/imagenes/male.png",
                                          height: 40),
                                      text: "Hombre")
                                ],
                              ),
                            )),
                          ])
                    ])),
            Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: color_2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  _genero = "f";
                                  color_1 = Color.fromARGB(17, 19, 40, 255);
                                  color_2 = Color.fromARGB(40, 19, 40, 255);
                                });
                              },
                              padding: EdgeInsets.all(40.0),
                              child: Column(
                                children: <Widget>[
                                  new Tab(
                                      icon: new Image.asset(
                                          "assets/imagenes/female.png",
                                          height: 40),
                                      text: "Mujer")
                                ],
                              ),
                            )),
                          ])
                    ])),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(17, 19, 40, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 160,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Estatura",
                                  style: TextStyle(
                                      color: Colors.white30, fontSize: 20),
                                )
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _estatura.round().toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50),
                                ),
                                Text(" cm",
                                    style: TextStyle(
                                        color: Colors.white30, fontSize: 20))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SliderTheme(
                                  data: SliderThemeData(
                                      activeTrackColor: Colors.white,
                                      thumbColor: Colors.pink,
                                      overlayColor:
                                          Colors.pink.withOpacity(0.2),
                                      inactiveTrackColor: Colors.white24,
                                      valueIndicatorColor: Colors.pink),
                                  child: Slider(
                                    value: _estatura,
                                    min: 0,
                                    max: 250,
                                    divisions: 250,
                                    label: _estatura.round().toString() + " cm",
                                    onChanged: (double value) {
                                      setState(() {
                                        _estatura = value;
                                      });
                                    },
                                  ),
                                )
                              ])
                        ])))
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color.fromARGB(17, 19, 40, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Peso",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "$_valorDelPeso",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: _restarAValorDelPeso,
                              child: Icon(Icons.remove,
                                  color: Colors.white, size: 32),
                            ),
                            FloatingActionButton(
                              onPressed: _sumarAValorDelPeso,
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 32),
                            )
                          ])
                    ])),
            Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color.fromARGB(17, 19, 40, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Edad",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "$_valorDeEdad",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: _restarValorDeEdad,
                              child: Icon(Icons.remove,
                                  color: Colors.white, size: 32),
                            ),
                            FloatingActionButton(
                              onPressed: _sumarValorDeEdad,
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 32),
                            )
                          ])
                    ])),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
              height: 80,
              color: Colors.pink,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultadoPage(
                                          valorDelPeso: _valorDelPeso,
                                          valorDeEdad: _valorDeEdad,
                                          estatura: _estatura,
                                          genero: _genero,
                                        )));
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(0.0)),
                          color: Colors.pink,
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            children: <Widget>[Text('Calcular')],
                          ),
                        ),
                      )
                    ]),
              ])),
        ),
      ],
    );
  }
}
