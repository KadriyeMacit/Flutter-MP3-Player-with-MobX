// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_button_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PreviousButtonModel on _PreviousButtonModelBase, Store {
  Computed<bool>? _$isPreviousTrueComputed;

  @override
  bool get isPreviousTrue =>
      (_$isPreviousTrueComputed ??= Computed<bool>(() => super.isPreviousTrue,
              name: '_PreviousButtonModelBase.isPreviousTrue'))
          .value;

  final _$isPreviousAtom = Atom(name: '_PreviousButtonModelBase.isPrevious');

  @override
  bool get isPrevious {
    _$isPreviousAtom.reportRead();
    return super.isPrevious;
  }

  @override
  set isPrevious(bool value) {
    _$isPreviousAtom.reportWrite(value, super.isPrevious, () {
      super.isPrevious = value;
    });
  }

  final _$_PreviousButtonModelBaseActionController =
      ActionController(name: '_PreviousButtonModelBase');

  @override
  void onPreviousPressed() {
    final _$actionInfo = _$_PreviousButtonModelBaseActionController.startAction(
        name: '_PreviousButtonModelBase.onPreviousPressed');
    try {
      return super.onPreviousPressed();
    } finally {
      _$_PreviousButtonModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPrevious: ${isPrevious},
isPreviousTrue: ${isPreviousTrue}
    ''';
  }
}
