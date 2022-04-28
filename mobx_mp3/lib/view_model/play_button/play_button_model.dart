import 'package:mobx/mobx.dart';
import 'package:mobx_mp3/features/mp3_player_manager.dart';
part 'play_button_model.g.dart';

class PlayButtonModel = _PlayButtonModelBase with _$PlayButtonModel;

abstract class _PlayButtonModelBase with Store {
  final Mp3PlayerManager _mp3playerManager = Mp3PlayerManager();

  @observable
  bool isPlay = true;

  @computed
  bool get isPlayTrue => isPlay;

  @action
  void onPlayPressed() {
    if (isPlay) {
      _mp3playerManager.play();
      isPlay = false;
    } else {
      _mp3playerManager.pause();
      isPlay = true;
    }
  }
}
