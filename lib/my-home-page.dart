import 'package:flutter/material.dart';
import 'package:pecacomp/main.dart';

import 'my-app.dart';

void main() {
  runApp(MyApp());
}

class Processador extends StatefulWidget {
  final dynamic data;

  const Processador({Key? key, this.data}) : super(key: key);
  @override
  _Processador createState() => _Processador();
}

class _Processador extends State<Processador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 2, 1),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.height / 2.3,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(widget.data['imagem']),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              widget.data['titulo'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              widget.data['texto'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              child: Divider(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
