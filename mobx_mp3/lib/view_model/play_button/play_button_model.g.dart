// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_button_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlayButtonModel on _PlayButtonModelBase, Store {
  Computed<bool>? _$isPlayTrueComputed;

  @override
  bool get isPlayTrue =>
      (_$isPlayTrueComputed ??= Computed<bool>(() => super.isPlayTrue,
              name: '_PlayButtonModelBase.isPlayTrue'))
          .value;

  final _$isPlayAtom = Atom(name: '_PlayButtonModelBase.isPlay');

  @override
  bool get isPlay {
    _$isPlayAtom.reportRead();
    return super.isPlay;
  }

  @override
  set isPlay(bool value) {
    _$isPlayAtom.reportWrite(value, super.isPlay, () {
      super.isPlay = value;
    });
  }

  final _$_PlayButtonModelBaseActionController =
      ActionController(name: '_PlayButtonModelBase');

  @override
  void onPlayPressed() {
    final _$actionInfo = _$_PlayButtonModelBaseActionController.startAction(
        name: '_PlayButtonModelBase.onPlayPressed');
    try {
      return super.onPlayPressed();
    } finally {
      _$_PlayButtonModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPlay: ${isPlay},
isPlayTrue: ${isPlayTrue}
    ''';
  }
}
