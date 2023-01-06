import 'package:flutter/material.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/drawer.dart';

class WatchlistDetail extends StatelessWidget {
  const WatchlistDetail({super.key, required this.watchlistItem});
  final Watchlist watchlistItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      drawer: MyDrawer(context),
    );
    // to be continued kalau ada waktu
  }
}
