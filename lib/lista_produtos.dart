import 'package:flutter/material.dart';
import 'package:paivadistribuidora/model/produto.dart';

class ListaProdutos extends StatefulWidget {
  @override
  _ListaProdutosState createState() => _ListaProdutosState();
}

class _ListaProdutosState extends State<ListaProdutos> {
  List<ProdutoModel> listaProdutos;
  @override
  void initState() {
    // TODO: implement initState
    carregaListaProdutos();
    super.initState();
  }

  carregaListaProdutos() {
    listaProdutos = new List<ProdutoModel>();
    listaProdutos.add(ProdutoModel(
        nomeProduto: "Amistel 269 ml",
        dataAtualizacao: "03/04/2020",
        valor: 2.49));

    listaProdutos.add(ProdutoModel(
        nomeProduto: "Amistel Cx 12 Un 269 ml",
        dataAtualizacao: "03/04/2020",
        valor: 30.00));

    listaProdutos.add(ProdutoModel(
        nomeProduto: "Antartica 600ml",
        dataAtualizacao: "03/04/2020",
        valor: 5.50));

    listaProdutos.add(ProdutoModel(
        nomeProduto: "Antatitica Guaraná 2 L ",
        dataAtualizacao: "03/04/2020",
        valor: 7.00));

    listaProdutos.add(ProdutoModel(
        nomeProduto: "Balinha de Menta ",
        dataAtualizacao: "03/04/2020",
        valor: 0.25));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
                  color: Colors.black45,
                  height: 5,
                ),
            itemCount: listaProdutos.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          listaProdutos[index].nomeProduto,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          listaProdutos[index].dataAtualizacao,
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                        Text(
                          "R\$:${listaProdutos[index].valor.toString()}",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              backgroundColor: Colors.blue,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Row(children: <Widget>[
                    Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.red.shade300,
                    ),
                  ])
                ],
              );
            }));
  }
}
