import 'package:flutter/material.dart';
import 'package:counter_7/api/fetchData.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/watchlistdetail.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchPageState();
}

class _MyWatchPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Watch List')),
      drawer: MyDrawer(context),
      body: FutureBuilder(
          future: fetchData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada watch list ",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Material(
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(5.0),
                              color: snapshot.data![index].fields.watched
                                  ? Colors.green.shade900
                                  : Colors.red.shade900,
                              shadowColor: Colors.blueGrey,
                              child: ListTile(
                                onTap: () {
                                  // Route menu ke halaman utama
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WatchlistDetail(
                                          watchlistItem: snapshot.data![index],
                                        ),
                                      ));
                                },
                                title: Text(snapshot.data![index].fields.title),
                                trailing: Checkbox(
                                  value: snapshot.data![index].fields.watched,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      snapshot.data![index].fields.watched =
                                          value!;
                                    });
                                  },
                                ),
                              )),
                        ));
              }
            }
          }),
    );
  }
}
