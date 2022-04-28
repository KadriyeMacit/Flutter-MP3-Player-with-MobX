import 'package:mobx/mobx.dart';
import 'package:mobx_mp3/features/mp3_player_manager.dart';
part 'next_button_model.g.dart';

class NextButtonModel = _NextButtonModelBase with _$NextButtonModel;

abstract class _NextButtonModelBase with Store {
  final Mp3PlayerManager _mp3playerManager = Mp3PlayerManager();

  @computed
  bool get isNextTrue => isNext;

  @observable
  bool isNext = true;

  @action
  void onNextPressed() {
    _mp3playerManager.next();
  }
}
