import 'package:counter_7/model/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Watchlist>> fetchData() async {
  var url =
      Uri.parse('https://web-production-88b7.up.railway.app/watchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<Watchlist> listWatch = [];
  for (var d in data) {
    if (d != null) {
      listWatch.add(Watchlist.fromJson(d));
    }
  }

  return listWatch;
}
