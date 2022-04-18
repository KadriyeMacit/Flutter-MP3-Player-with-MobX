import 'package:mobx/mobx.dart';
part 'play_button_model.g.dart';

class PlayButtonModel = _PlayButtonModelBase with _$PlayButtonModel;

abstract class _PlayButtonModelBase with Store {
  @observable
  bool isPlay = true;

  @computed
  bool get isPlayTrue => isPlay;

  @action
  void onPlayPressed() {
    if (isPlay) {
      isPlay = false;
    } else {
      isPlay = true;
    }
  }
}
