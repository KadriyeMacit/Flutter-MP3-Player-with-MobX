import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Mp3PlayerManager {
  Mp3PlayerManager() {
    _init();
  }

  final AudioPlayer _audioPlayer = AudioPlayer();

  static const url = 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3';

  void _init() async {
    print("initteyiz");

    await _audioPlayer.setUrl(url);

    // _audioPlayer
    //     .setAudioSource(
    //   ConcatenatingAudioSource(
    //     children: [
    //       AudioSource.uri(Uri.parse("https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3")),
    //       AudioSource.uri(Uri.parse(
    //           "https://archive.org/download/igm-v8_202101/IGM%20-%20Vol.%208/15%20Pokemon%20Red%20-%20Cerulean%20City%20%28Game%20Freak%29.mp3")),
    //       AudioSource.uri(
    //           Uri.parse("https://scummbar.com/mi2/MI1-CD/01%20-%20Opening%20Themes%20-%20Introduction.mp3")),
    //     ],
    //   ),
    // )
    //     .catchError((error) {
    //   // catch load errors: 404, invalid url ...
    //   print("An error occured $error");
    // });

    _audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading || processingState == ProcessingState.buffering) {
        buttonNotifier.value = ButtonState.loading;
      } else if (!isPlaying) {
        buttonNotifier.value = ButtonState.paused;
      } else if (processingState != ProcessingState.completed) {
        buttonNotifier.value = ButtonState.playing;
      } else {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });

    _audioPlayer.positionStream.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });

    _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: bufferedPosition,
        total: oldState.total,
      );
    });

    _audioPlayer.durationStream.listen((totalDuration) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: totalDuration ?? Duration.zero,
      );
    });
  }

  void play() {
    print("oynat");
    _audioPlayer.play();
  }

  void pause() {
    print("durdur");
    _audioPlayer.pause();
  }

  void seek(Duration position) {
    print("dakikadayız");
    print(position);
    _audioPlayer.seek(position);
  }

  void dispose() {
    print("disposdayız");
    _audioPlayer.dispose();
  }

  void previous() {
    print("öncesi varsa geri");
    print(_audioPlayer.hasPrevious);
    _audioPlayer.hasPrevious ? _audioPlayer.seekToPrevious() : null;
  }

  void next() {
    print("sonrası varsa ileri");
    _audioPlayer.hasNext ? _audioPlayer.seekToNext() : null;
  }

  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState(
      current: Duration.zero,
      buffered: Duration.zero,
      total: Duration.zero,
    ),
  );
  final buttonNotifier = ValueNotifier<ButtonState>(ButtonState.paused);
}

class ProgressBarState {
  ProgressBarState({
    required this.current,
    required this.buffered,
    required this.total,
  });
  final Duration current;
  final Duration buffered;
  final Duration total;
}

enum ButtonState { paused, playing, loading }
