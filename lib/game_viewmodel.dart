import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'game_viewmodel.g.dart';

class GameViewModel = GameViewModelBase with _$GameViewModel;

abstract class GameViewModelBase with Store {
  @observable
  bool turnX = true;

  @observable
  bool gameEnd = false;

  @observable
  int count = 0;

  @observable
  List<List<String>> list = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  @action
  void setValue(BuildContext _, int i, int j) {
    list[i][j] = turnX ? 'X' : 'O';
    count == 0 ? gameEnd = false : null;
    checkEndGame(_, turnX ? 'X' : 'O');
  }

  @action
  void checkEndGame(BuildContext _, String control) {
    String c = control;
    if (c == list[0][0] && c == list[0][1] && c == list[0][2]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[1][0] && c == list[1][1] && c == list[1][2]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[2][0] && c == list[2][1] && c == list[2][2]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[0][0] && c == list[1][0] && c == list[2][0]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[0][1] && c == list[1][1] && c == list[2][1]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[0][2] && c == list[1][2] && c == list[2][2]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[0][0] && c == list[1][1] && c == list[2][2]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (c == list[2][0] && c == list[1][1] && c == list[0][2]) {
      gameEnd = true;
      resetGame('$c Kazandı', _);
    } else if (count == 9) {
      resetGame('Berabere', _);
    } else {
      changeTurn();
    }
  }

  @action
  void changeTurn() {
    turnX = !turnX;
  }

  @action
  void resetGame(String winner, BuildContext _) {
    showDialog(
        context: _,
        builder: (_) => AlertDialog(
              title: const Text('Oyun Bitti'),
              content: Text(winner),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.pop(_),
                    child: const Text('Yeni Oyun'))
              ],
            ));
    list = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ];
    count = 0;
    turnX = true;
  }
}
