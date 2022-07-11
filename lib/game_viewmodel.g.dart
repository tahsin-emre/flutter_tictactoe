// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameViewModel on GameViewModelBase, Store {
  late final _$turnXAtom =
      Atom(name: 'GameViewModelBase.turnX', context: context);

  @override
  bool get turnX {
    _$turnXAtom.reportRead();
    return super.turnX;
  }

  @override
  set turnX(bool value) {
    _$turnXAtom.reportWrite(value, super.turnX, () {
      super.turnX = value;
    });
  }

  late final _$gameEndAtom =
      Atom(name: 'GameViewModelBase.gameEnd', context: context);

  @override
  bool get gameEnd {
    _$gameEndAtom.reportRead();
    return super.gameEnd;
  }

  @override
  set gameEnd(bool value) {
    _$gameEndAtom.reportWrite(value, super.gameEnd, () {
      super.gameEnd = value;
    });
  }

  late final _$countAtom =
      Atom(name: 'GameViewModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$listAtom =
      Atom(name: 'GameViewModelBase.list', context: context);

  @override
  List<List<String>> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<List<String>> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$GameViewModelBaseActionController =
      ActionController(name: 'GameViewModelBase', context: context);

  @override
  void setValue(BuildContext _, int i, int j) {
    final _$actionInfo = _$GameViewModelBaseActionController.startAction(
        name: 'GameViewModelBase.setValue');
    try {
      return super.setValue(_, i, j);
    } finally {
      _$GameViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkEndGame(BuildContext _, String control) {
    final _$actionInfo = _$GameViewModelBaseActionController.startAction(
        name: 'GameViewModelBase.checkEndGame');
    try {
      return super.checkEndGame(_, control);
    } finally {
      _$GameViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTurn() {
    final _$actionInfo = _$GameViewModelBaseActionController.startAction(
        name: 'GameViewModelBase.changeTurn');
    try {
      return super.changeTurn();
    } finally {
      _$GameViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetGame(String winner, BuildContext _) {
    final _$actionInfo = _$GameViewModelBaseActionController.startAction(
        name: 'GameViewModelBase.resetGame');
    try {
      return super.resetGame(winner, _);
    } finally {
      _$GameViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
turnX: ${turnX},
gameEnd: ${gameEnd},
count: ${count},
list: ${list}
    ''';
  }
}
