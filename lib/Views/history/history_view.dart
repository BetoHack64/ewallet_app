// ignore_for_file: avoid_unnecessary_containers, unrelated_type_equality_checks

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_view/flutter_list_view.dart';
import 'package:intl/intl.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  List<Operacao> lista = [
    Operacao(
        icon: Icon(Icons.currency_exchange),
        descricao: "Transferencia",
        horario: "10h:00m",
        data: DateTime(2022, 06, 13),
        valor: "-5.00 AOA"),
    Operacao(
        icon: Icon(Icons.currency_exchange),
        descricao: "Transferencia",
        horario: "10h:30m",
        data: DateTime(2022, 06, 13),
        valor: "-10.00 AOA"),
    Operacao(
        icon: Icon(Icons.currency_exchange),
        descricao: "Transferencia",
        horario: "12h:35m",
        data: DateTime(2022, 06, 13),
        valor: "-5.00 AOA"),
    Operacao(
        icon: Icon(Icons.currency_exchange),
        descricao: "Pagamento",
        horario: "15h:22m",
        data: DateTime(2022, 06, 12),
        valor: "-\$5.00"),
  ];

  List<OperacaoGrupo> grupos = [];
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
   // lista.sort((a, b) => a.data.compareTo(b.data));
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f9ff),
      appBar: AppBar(
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 30,
              height: 30,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(0),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                alignment: Alignment.center,
                icon: const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 120),
              child: const Text(
                'History',
                style: TextStyle(
                  color: Color(0xff152c5b),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xffeeeeee),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xffeeeeee),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hoje",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Text(
                      "10 Out, 2022",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
               
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      'teste',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderHeader(String text) {
    return Container(
      color: const Color(0xFFf5f),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Color(0xFF767676)),
        ),
      ),
    );
  }

  Widget _renderItem(Operacao itemData) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 50,
                    height: 50,
                    child: itemData.icon),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itemData.descricao),
                    Text(
                      itemData.horario,
                      style: const TextStyle(
                        color: Color(0xff757575),
                        fontSize: 12,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              itemData.valor,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class OperacaoGrupo {
  final String data;
  final String dia;
  final List<Operacao> operacoes;
  OperacaoGrupo(
      {required this.data, required this.dia, required this.operacoes});
}

class Operacao {
  final Icon icon;
  final String descricao;
  final String horario;
  final DateTime data;
  final String valor;
  Operacao(
      {required this.icon,
      required this.descricao,
      required this.horario,
      required this.data,
      required this.valor});
}
