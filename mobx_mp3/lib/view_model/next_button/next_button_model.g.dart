// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_button_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NextButtonModel on _NextButtonModelBase, Store {
  Computed<bool>? _$isNextTrueComputed;

  @override
  bool get isNextTrue =>
      (_$isNextTrueComputed ??= Computed<bool>(() => super.isNextTrue,
              name: '_NextButtonModelBase.isNextTrue'))
          .value;

  final _$isNextAtom = Atom(name: '_NextButtonModelBase.isNext');

  @override
  bool get isNext {
    _$isNextAtom.reportRead();
    return super.isNext;
  }

  @override
  set isNext(bool value) {
    _$isNextAtom.reportWrite(value, super.isNext, () {
      super.isNext = value;
    });
  }

  final _$_NextButtonModelBaseActionController =
      ActionController(name: '_NextButtonModelBase');

  @override
  void onNextPressed() {
    final _$actionInfo = _$_NextButtonModelBaseActionController.startAction(
        name: '_NextButtonModelBase.onNextPressed');
    try {
      return super.onNextPressed();
    } finally {
      _$_NextButtonModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isNext: ${isNext},
isNextTrue: ${isNextTrue}
    ''';
  }
}
