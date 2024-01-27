import 'dart:convert';

DetailArtistModel detailArtistModelFromJson(String str) =>
    DetailArtistModel.fromJson(json.decode(str));

String detailArtistModelToJson(DetailArtistModel data) =>
    json.encode(data.toJson());

class DetailArtistModel {
  final int resultCount;
  final List<Result> results;

  DetailArtistModel({
    required this.resultCount,
    required this.results,
  });

  factory DetailArtistModel.fromJson(Map<String, dynamic> json) =>
      DetailArtistModel(
        resultCount: json["resultCount"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resultCount": resultCount,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  // final WrapperType wrapperType;
  // final Kind kind;
  final int artistId;
  final int collectionId;
  final int trackId;
  final String artistName;
  final String collectionName;
  final String? trackName;
  // final String collectionCensoredName;
  // final String trackCensoredName;
  final String artistViewUrl;
  // final String collectionViewUrl;
  final String? trackViewUrl;
  final String? previewUrl;
  final String artworkUrl30;
  final String artworkUrl60;
  final String artworkUrl100;
  final double collectionPrice;
  // final double trackPrice;
  final DateTime releaseDate;
  // final Explicitness collectionExplicitness;
  // final Explicitness trackExplicitness;
  // final int discCount;
  // final int discNumber;
  final int trackCount;
  final int trackNumber;
  // final int trackTimeMillis;
  // final Country country;
  // final Currency currency;
  // final String primaryGenreName;
  // final bool isStreamable;
  // final double trackRentalPrice;
  // final double trackHdRentalPrice;
  // final String contentAdvisoryRating;
  // final String shortDescription;
  // final String longDescription;
  // final String copyright;
  final String description;
  // final String feedUrl;
  // final double collectionHdPrice;
  // final String artworkUrl600;
  // final List<String> genreIds;
  // final List<String> genres;
  // final double trackHdPrice;
  // final int collectionArtistId;
  // final String collectionArtistName;

  Result({
    // required this.wrapperType,
    // required this.kind,
    required this.artistId,
    required this.collectionId,
    required this.trackId,
    required this.artistName,
    required this.collectionName,
    required this.trackName,
    // required this.collectionCensoredName,
    // required this.trackCensoredName,
    required this.artistViewUrl,
    // required this.collectionViewUrl,
    required this.trackViewUrl,
    required this.previewUrl,
    required this.artworkUrl30,
    required this.artworkUrl60,
    required this.artworkUrl100,
    required this.collectionPrice,
    // required this.trackPrice,
    required this.releaseDate,
    // required this.collectionExplicitness,
    // required this.trackExplicitness,
    // required this.discCount,
    // required this.discNumber,
    required this.trackCount,
    required this.trackNumber,
    // required this.trackTimeMillis,
    // required this.country,
    // required this.currency,
    // required this.primaryGenreName,
    // required this.isStreamable,
    // required this.trackRentalPrice,
    // required this.trackHdRentalPrice,
    // required this.contentAdvisoryRating,
    // required this.shortDescription,
    // required this.longDescription,
    // required this.copyright,
    required this.description,
    // required this.feedUrl,
    // required this.collectionHdPrice,
    // required this.artworkUrl600,
    // required this.genreIds,
    // required this.genres,
    // required this.trackHdPrice,
    // required this.collectionArtistId,
    // required this.collectionArtistName,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        // wrapperType: wrapperTypeValues.map[json["wrapperType"]]!,
        // kind: kindValues.map[json["kind"]]!,
        artistId: json["artistId"] ?? 0,
        collectionId: json["collectionId"] ?? 0,
        trackId: json["trackId"] ?? 0,
        artistName: json["artistName"],
        collectionName: json["collectionName"] ?? "",
        trackName: json["trackName"],
        // collectionCensoredName: json["collectionCensoredName"],
        // trackCensoredName: json["trackCensoredName"],
        artistViewUrl: json["artistViewUrl"] ?? "",
        // collectionViewUrl: json["collectionViewUrl"],
        trackViewUrl: json["trackViewUrl"],
        previewUrl: json["previewUrl"],
        artworkUrl30: json["artworkUrl30"] ?? "",
        artworkUrl60: json["artworkUrl60"] ?? '',
        artworkUrl100: json["artworkUrl100"] ?? "",
        collectionPrice: json["collectionPrice"]?.toDouble() ?? 0.0,
        // trackPrice: json["trackPrice"]?.toDouble(),
        releaseDate: DateTime.parse(json["releaseDate"]),
        // collectionExplicitness: explicitnessValues.map[json["collectionExplicitness"]]!,
        // trackExplicitness: explicitnessValues.map[json["trackExplicitness"]]!,
        // discCount: json["discCount"],
        // discNumber: json["discNumber"],
        trackCount: json["trackCount"] ?? 0,
        trackNumber: json["trackNumber"] ?? 0,
        // trackTimeMillis: json["trackTimeMillis"],
        // country: countryValues.map[json["country"]]!,
        // currency: currencyValues.map[json["currency"]]!,
        // primaryGenreName: json["primaryGenreName"],
        // isStreamable: json["isStreamable"],
        // trackRentalPrice: json["trackRentalPrice"]?.toDouble(),
        // trackHdRentalPrice: json["trackHdRentalPrice"]?.toDouble(),
        // contentAdvisoryRating: json["contentAdvisoryRating"],
        // shortDescription: json["shortDescription"],
        // longDescription: json["longDescription"],
        // copyright: json["copyright"],
        description: json["description"] ?? "",
        // feedUrl: json["feedUrl"],
        // collectionHdPrice: json["collectionHdPrice"]?.toDouble(),
        // artworkUrl600: json["artworkUrl600"],
        // genreIds: List<String>.from(json["genreIds"].map((x) => x)),
        // genres: List<String>.from(json["genres"].map((x) => x)),
        // trackHdPrice: json["trackHdPrice"]?.toDouble(),
        // collectionArtistId: json["collectionArtistId"],
        // collectionArtistName: json["collectionArtistName"],
      );

  Map<String, dynamic> toJson() => {
        // "wrapperType": wrapperTypeValues.reverse[wrapperType],
        // "kind": kindValues.reverse[kind],
        "artistId": artistId,
        "collectionId": collectionId,
        "trackId": trackId,
        "artistName": artistName,
        "collectionName": collectionName,
        "trackName": trackName,
        // "collectionCensoredName": collectionCensoredName,
        // "trackCensoredName": trackCensoredName,
        "artistViewUrl": artistViewUrl,
        // "collectionViewUrl": collectionViewUrl,
        // "trackViewUrl": trackViewUrl,
        "previewUrl": previewUrl,
        "artworkUrl30": artworkUrl30,
        "artworkUrl60": artworkUrl60,
        "artworkUrl100": artworkUrl100,
        "collectionPrice": collectionPrice,
        // "trackPrice": trackPrice,
        "releaseDate": releaseDate.toIso8601String(),
        // "collectionExplicitness": explicitnessValues.reverse[collectionExplicitness],
        // "trackExplicitness": explicitnessValues.reverse[trackExplicitness],
        // "discCount": discCount,
        // "discNumber": discNumber,
        "trackCount": trackCount,
        "trackNumber": trackNumber,
        // "trackTimeMillis": trackTimeMillis,
        // "country": countryValues.reverse[country],
        // "currency": currencyValues.reverse[currency],
        // "primaryGenreName": primaryGenreName,
        // "isStreamable": isStreamable,
        // "trackRentalPrice": trackRentalPrice,
        // "trackHdRentalPrice": trackHdRentalPrice,
        // "contentAdvisoryRating": contentAdvisoryRating,
        // "shortDescription": shortDescription,
        // "longDescription": longDescription,
        // "copyright": copyright,
        "description": description,
        // "feedUrl": feedUrl,
        // "collectionHdPrice": collectionHdPrice,
        // "artworkUrl600": artworkUrl600,
        // "genreIds": List<dynamic>.from(genreIds.map((x) => x)),
        // "genres": List<dynamic>.from(genres.map((x) => x)),
        // "trackHdPrice": trackHdPrice,
        // "collectionArtistId": collectionArtistId,
        // "collectionArtistName": collectionArtistName,
      };
}

enum Explicitness { CLEANED, EXPLICIT, NOT_EXPLICIT }

final explicitnessValues = EnumValues({
  "cleaned": Explicitness.CLEANED,
  "explicit": Explicitness.EXPLICIT,
  "notExplicit": Explicitness.NOT_EXPLICIT
});

enum Country { USA }

final countryValues = EnumValues({"USA": Country.USA});

enum Currency { USD }

final currencyValues = EnumValues({"USD": Currency.USD});

enum Kind { FEATURE_MOVIE, MUSIC_VIDEO, PODCAST, SONG, TV_EPISODE }

final kindValues = EnumValues({
  "feature-movie": Kind.FEATURE_MOVIE,
  "music-video": Kind.MUSIC_VIDEO,
  "podcast": Kind.PODCAST,
  "song": Kind.SONG,
  "tv-episode": Kind.TV_EPISODE
});

enum WrapperType { AUDIOBOOK, TRACK }

final wrapperTypeValues = EnumValues(
    {"audiobook": WrapperType.AUDIOBOOK, "track": WrapperType.TRACK});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
