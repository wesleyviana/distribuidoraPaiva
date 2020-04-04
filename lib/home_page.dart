import 'package:flutter/material.dart';
import 'package:paivadistribuidora/produtos_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Distribuidora Paiva"),
      ),
      body: Center(
          child: RaisedButton(
              child: Text("Produtos"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProdutoDistribuidora()));
              })),
    );
  }
}
