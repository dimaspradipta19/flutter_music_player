import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_itunes/models/detail_artist_model.dart';

class DetailArtistService {
  String url = "https://itunes.apple.com";
  String endPoint = "/search?term=";
  Dio dio = Dio();

  Future<DetailArtistModel> getDetailArtist(String artistName) async {
    try {
      var response = await dio.get(url + endPoint + artistName);

      if (response.statusCode == 200) {
        var decodedJson = jsonDecode(response.data);

        var result = DetailArtistModel.fromJson(decodedJson);
        return result;
      } else {
        log("Message Error");
      }
    } catch (e) {
      log(e.toString());
    }
    return DetailArtistModel(resultCount: 0, results: []);
  }
}
