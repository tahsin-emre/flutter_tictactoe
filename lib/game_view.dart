import 'package:flutter/material.dart';
import 'package:tictactoe/game_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GameView extends StatelessWidget {
  final GameViewModel vm = GameViewModel();
  GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => vm.resetGame('', context),
              icon: const Icon(Icons.restart_alt))
        ],
      ),
      body: buildBody(vm.list),
    );
  }

  Widget buildBody(List<List<String>> list) {
    return Observer(
      builder: (_) {
        list = vm.list;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int n = 0; n < 3; n++) card(_, list[0][n], 0, n)
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int n = 0; n < 3; n++) card(_, list[1][n], 1, n)
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int n = 0; n < 3; n++) card(_, list[2][n], 2, n)
            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Sıradaki Oyuncu ${vm.turnX ? 'X' : 'O'}'),
            ),
          ],
        );
      },
    );
  }

  Widget card(BuildContext _, String data, int i, int j) {
    return Container(
      width: 70,
      height: 70,
      color: data == ''
          ? Colors.grey
          : data == 'X'
              ? Colors.blue
              : Colors.green,
      margin: const EdgeInsets.all(10),
      child: InkWell(
          onTap: () {
            if (data == '') {
              vm.setValue(_, i, j);
            }
          },
          child:
              Center(child: Text(data, style: const TextStyle(fontSize: 25)))),
    );
  }
}
