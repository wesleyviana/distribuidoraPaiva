import 'package:flutter/material.dart';

import 'package:paivadistribuidora/lista_produtos.dart';

class ProdutoDistribuidora extends StatefulWidget {
  @override
  _ProdutoDistribuidoraState createState() => _ProdutoDistribuidoraState();
}

class _ProdutoDistribuidoraState extends State<ProdutoDistribuidora> {
  TextEditingController textBusca = new TextEditingController();
  TextEditingController nomeProduto = new TextEditingController();
  TextEditingController valorProduto = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showAlertDialog();
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 45,
          )),
      appBar: AppBar(
        title: Text("Produtos"),
        elevation: 5,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: textBusca,
                textAlign: TextAlign.start,
                style: TextStyle(
                    decorationColor: Colors.white,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black45),
                  labelStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                  ),
                ),
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: ListaProdutos()),
        ]),
      ),
    );
  }

  void _showAlertDialog() {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("Cadastrar"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Cadastrar Produto"),
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        height: 100,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              controller: nomeProduto,
              textAlign: TextAlign.start,
              style: TextStyle(
                  decorationColor: Colors.white,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
              decoration: InputDecoration(
                  hintText: "Nome Produto",
                  hintStyle: TextStyle(color: Colors.black45),
                  labelStyle: TextStyle(color: Colors.black45),
                  border: UnderlineInputBorder()),
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: valorProduto,
              textAlign: TextAlign.start,
              style: TextStyle(
                  decorationColor: Colors.white,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
              decoration: InputDecoration(
                  hintText: "Valor Produto",
                  hintStyle: TextStyle(color: Colors.black45),
                  labelStyle: TextStyle(color: Colors.black45),
                  border: UnderlineInputBorder()),
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
            ),
          ],
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
