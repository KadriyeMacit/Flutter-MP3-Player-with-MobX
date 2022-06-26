// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_bar_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProgressBarModel on _ProgressBarModelBase, Store {
  Computed<double>? _$seekValueComputed;

  @override
  double get seekValue =>
      (_$seekValueComputed ??= Computed<double>(() => super.seekValue,
              name: '_ProgressBarModelBase.seekValue'))
          .value;

  final _$seekDurationAtom = Atom(name: '_ProgressBarModelBase.seekDuration');

  @override
  double get seekDuration {
    _$seekDurationAtom.reportRead();
    return super.seekDuration;
  }

  @override
  set seekDuration(double value) {
    _$seekDurationAtom.reportWrite(value, super.seekDuration, () {
      super.seekDuration = value;
    });
  }

  final _$_ProgressBarModelBaseActionController =
      ActionController(name: '_ProgressBarModelBase');

  @override
  void onSeekPressed(Duration seekDuration) {
    final _$actionInfo = _$_ProgressBarModelBaseActionController.startAction(
        name: '_ProgressBarModelBase.onSeekPressed');
    try {
      return super.onSeekPressed(seekDuration);
    } finally {
      _$_ProgressBarModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
seekDuration: ${seekDuration},
seekValue: ${seekValue}
    ''';
  }
}
