import 'package:http/http.dart' as http;
import 'dart:convert';
import '../uitls/key.dart';
import '../components/searchbar.dart';
import 'dart:typed_data';


Future<List> fetchnews() async{
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=in&category=technology&pageSize=100&apiKey=' +
    Key.key +  // class name . variable name from key.dart
        '&q=' +
        SearchBar.searchcontroller.text
    ),
  );
  Map result=jsonDecode(response.body);
  print('Fetched');
  return (result['articles']);
}