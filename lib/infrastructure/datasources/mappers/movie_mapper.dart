import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/datasources/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/datasources/models/moviedb/movie_moviedb.dart';

class MovieMapper {

  static Movie movieDBToEntity(MovieMovieDB movieDb) => Movie(
    adult: movieDb.adult,
    backdropPath: movieDb.backdropPath != ''
    ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
    : 'https://i.stack.imgur.com/GNhxO.png',
    
    genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '') 
    ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
    : 'no-poster',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount
  );

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: moviedb.backdropPath != ''
    ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
    : 'https://i.stack.imgur.com/GNhxO.png',
    
    genreIds: moviedb.genres.map((e) => e.id.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '') 
    ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
    : 'no-poster',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount
  );
}