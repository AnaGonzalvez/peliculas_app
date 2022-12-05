// To parse this JSON data, do
//
//     final popularpResponse = popularpResponseFromMap(jsonString);

import 'dart:convert';

import 'package:peliculas_app/models/models.dart';

class PopularpResponse {
    PopularpResponse({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    factory PopularpResponse.fromJson(String str) => PopularpResponse.fromMap(json.decode(str));

    factory PopularpResponse.fromMap(Map<String, dynamic> json) => PopularpResponse(
        
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );
}