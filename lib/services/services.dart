import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_catalog/model/model.dart';

String apiKey = "8d24ebdacbd25d186534387f1bf51948";
String baseUrl = "https://api.themoviedb.org/3/movie";

class CatalogApi {
  Future<List<Catalog>?> getNowPlayingMovie() async{
    List<Catalog>? list;
    List<Catalog>? search = [];
    String url ="$baseUrl/now_playing?api_key=$apiKey";
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      var result = data["results"] as List;
      list = result.map((json) => Catalog.fromJson(json)).toList();
      print(response.body);
      return list;
    } else {
      throw Exception("Tidak Dapat Mengambil Data");
    }
  }

  Future<List<Catalog>?> getPopularMovie() async{
    List<Catalog>? list;

    String url ="$baseUrl/popular?api_key=$apiKey";

    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      var result = data["results"] as List;
      list = result.map((json) => Catalog.fromJson(json)).toList();
      print(response.body);
      return list;
    } else {
      throw Exception("Tidak Dapat Mengambil Data");
    }
  }


  Future<List<Catalog>?> getUpcomingMovies() async{
    List<Catalog>? list;

    String url ="$baseUrl/upcoming?api_key=$apiKey";

    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      var result = data["results"] as List;
      list = result.map((json) => Catalog.fromJson(json)).toList();
      print(response.body);
      return list;
    } else {
      throw Exception("Tidak Dapat Mengambil Data");
    }
  }

}