import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_itunes/data/services/detail_artist_service.dart';
import 'package:flutter_itunes/models/detail_artist_model.dart';

enum ResultState { noData, isLoading, hasData, error }

class DetailArtistProvider with ChangeNotifier {
  DetailArtistModel? resultDetail;
  DetailArtistService service = DetailArtistService();

  ResultState state = ResultState.noData;

  Future<DetailArtistModel?> getResult(String artistName) async {
    try {
      state = ResultState.isLoading;
      notifyListeners();

      resultDetail = await service.getDetailArtist(artistName);

      if (resultDetail != null) {
        state = ResultState.hasData;
        notifyListeners();
      } else {
        state = ResultState.error;
        notifyListeners();
      }
    } catch (e) {
      log(e.toString());
      notifyListeners();
    }
    return resultDetail;
  }
}
