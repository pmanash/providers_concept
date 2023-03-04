import 'package:flutter/material.dart';
import 'package:flutter_provider1_concept/list_provider.dart';
import 'package:flutter_provider1_concept/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  itemCount: value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      value.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Second(),
                    ));
                  },
                  child: Text("second"))
            ],
          ),
        ),
      ),
    );
  }
}
