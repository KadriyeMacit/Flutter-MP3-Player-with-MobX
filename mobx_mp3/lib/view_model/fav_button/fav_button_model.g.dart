// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_button_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavButtonModel on _FavButtonModelBase, Store {
  Computed<bool>? _$isFavTrueComputed;

  @override
  bool get isFavTrue =>
      (_$isFavTrueComputed ??= Computed<bool>(() => super.isFavTrue,
              name: '_FavButtonModelBase.isFavTrue'))
          .value;

  final _$isFavAtom = Atom(name: '_FavButtonModelBase.isFav');

  @override
  bool get isFav {
    _$isFavAtom.reportRead();
    return super.isFav;
  }

  @override
  set isFav(bool value) {
    _$isFavAtom.reportWrite(value, super.isFav, () {
      super.isFav = value;
    });
  }

  final _$_FavButtonModelBaseActionController =
      ActionController(name: '_FavButtonModelBase');

  @override
  void onFavPressed() {
    final _$actionInfo = _$_FavButtonModelBaseActionController.startAction(
        name: '_FavButtonModelBase.onFavPressed');
    try {
      return super.onFavPressed();
    } finally {
      _$_FavButtonModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFav: ${isFav},
isFavTrue: ${isFavTrue}
    ''';
  }
}
