import 'package:counter_7/form.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class Data {
  String judul;
  int nominal;
  String tipe;

  Data(this.judul, this.nominal, this.tipe);
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              for (var budget in budgetList)
                ListTile(
                  shape: RoundedRectangleBorder(side: BorderSide(width: 2)),
                  leading: Column(
                    children: [
                      Text(
                        budget.judul,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        budget.nominal.toString(),
                      )
                    ],
                  ),
                  trailing: Text(
                    budget.tipe,
                    textAlign: TextAlign.end,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
