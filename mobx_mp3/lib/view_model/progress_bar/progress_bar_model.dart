import 'package:mobx_mp3/features/mp3_player_manager.dart';
import 'package:mobx/mobx.dart';
part 'progress_bar_model.g.dart';

class ProgressBarModel = _ProgressBarModelBase with _$ProgressBarModel;

abstract class _ProgressBarModelBase with Store {
  final Mp3PlayerManager _mp3playerManager = Mp3PlayerManager();

  @computed
  double get seekValue => seekDuration;

  @observable
  double seekDuration = 0;

  @action
  void onSeekPressed(Duration seekDuration) {
    _mp3playerManager.seek(seekDuration);
  }
}
