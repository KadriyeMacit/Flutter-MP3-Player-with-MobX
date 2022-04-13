import 'package:mobx/mobx.dart';
part 'play_button_model.g.dart';

class PlayButtonModel = _PlayButtonModelBase with _$PlayButtonModel;

abstract class _PlayButtonModelBase with Store {
  @computed
  bool get isPlayTrue => isPlay;

  @observable
  bool isPlay = true;

  @action
  void onPlayPressed() {
    if (isPlay) {
      isPlay = false;
    } else {
      isPlay = true;
    }
  }
}
