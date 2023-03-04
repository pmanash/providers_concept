import 'package:flutter/material.dart';
import 'package:flutter_provider1_concept/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          value.add();
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                value.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      value.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
