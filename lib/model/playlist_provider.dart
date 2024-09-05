import 'package:flutter/material.dart';
import 'package:music/model/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
      songName: "Möbius",
      artisName: "Bryan",
      albumArtImagePath: "assets/imges/4.jpg",
      audioPath: "assets/audio/Möbius.mp3",
    ),
    Song(
      songName: "Ms Hathaway",
      artisName: "Bryan",
      albumArtImagePath: "assets/imges/4.jpg",
      audioPath: "assets/audio/Mobile Suit Gundam Hathaway.mp3",
    ),
    Song(
      songName: "Vigilante",
      artisName: "Hiroyuki Sawano",
      albumArtImagePath: "assets/imges/3.jpg",
      audioPath: "assets/audio/Vigilante.mp3",
    ),
    Song(
      songName: "Go Getters",
      artisName: "Mori Calliope",
      albumArtImagePath: "assets/imges/1.jpg",
      audioPath: "assets/audio/Go-Getters.mp3",
    ),
    Song(
      songName: "We Are Who We Are",
      artisName: "Lacey Johnson,David Gibson Mclean",
      albumArtImagePath: "assets/imges/2.jpg",
      audioPath: "assets/audio/We Are Who We Are.mp3",
    ),
  ];

  int? _currentSongIndex;

  /*

  G E T T E R s

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R s

  */

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
    notifyListeners();
  }
}
