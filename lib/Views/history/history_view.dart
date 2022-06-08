// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f9ff),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 40,
                height: 40,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.black,
                    size: 25,
                  ),
                )),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 100),
              child: const Text(
                'History',
                style: TextStyle(
                  color: Color(0xff152c5b),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xfff3f9ff),
        elevation: 0,
      ),
      body: Center(
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
                    color: Color(0xffa3afc4),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  width: 60,
                  height: 60,
                ),
                const Text(
                  "-\$5.00",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
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
      )),
    );
  }
}
