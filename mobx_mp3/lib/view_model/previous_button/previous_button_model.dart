import 'package:mobx/mobx.dart';
import 'package:mobx_mp3/features/mp3_player_manager.dart';
part 'previous_button_model.g.dart';

class PreviousButtonModel = _PreviousButtonModelBase with _$PreviousButtonModel;

abstract class _PreviousButtonModelBase with Store {
  final Mp3PlayerManager _mp3playerManager = Mp3PlayerManager();

  @computed
  bool get isPreviousTrue => isPrevious;

  @observable
  bool isPrevious = false;

  @action
  void onPreviousPressed() {
    _mp3playerManager.previous();
  }
}
