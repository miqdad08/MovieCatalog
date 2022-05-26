
class Catalog {
  Catalog({
    required this.title,
    required this.description,
    required this.poster,
    required this.rating,
    required this.date,
    required this.backdropPath,
  });

  final String title;
  final String description;
  final String poster;
  final String rating;
  final String date;
  final String backdropPath;

  factory Catalog.fromJson(Map<String, dynamic> json) => Catalog(
    title: json["title"] ?? 'Fight Club',
    description: json["overview"] ?? 'blalblabla',
    poster: json["poster_path"] ?? '/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg',
    backdropPath: json["backdrop_path"] ?? '/yzH5zvuEzzsHLZnn0jwYoPf0CMT.jpg',
    rating: json["vote_average"].toString() ?? "8.4",
    date: json["release_date"] ?? '1999-10-15',
  );

}
