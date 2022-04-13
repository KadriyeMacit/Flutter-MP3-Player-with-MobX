import 'package:mobx/mobx.dart';
part 'fav_button_model.g.dart';

class FavButtonModel = _FavButtonModelBase with _$FavButtonModel;

abstract class _FavButtonModelBase with Store {
  @computed
  bool get isFavTrue => isFav;

  @observable
  bool isFav = false;

  @action
  void onFavPressed() {
    if (isFav) {
      isFav = false;
    } else {
      isFav = true;
    }
  }
}
