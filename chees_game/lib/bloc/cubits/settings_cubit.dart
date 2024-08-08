import 'package:chees_game/bloc/states/settings_state.dart';
import 'package:chees_game/models/board.dart';
import 'package:chees_game/models/lost_figures.dart';
import 'package:chees_game/models/player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(super.initialState);

  factory SettingsCubit.initial() {
    final board =
        Board(cells: [], whiteLost: LostFigures(), blackLost: LostFigures());
    board.createCells();
    board.putFigures();

    return SettingsCubit(SettingsState(
      whitePlayer: Player.human(),
      blackPlayer: Player.human(),
      difficulty: 1,
    ));
  }
}
