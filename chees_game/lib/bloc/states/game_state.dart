import 'package:chees_game/models/board.dart';
import 'package:chees_game/models/cell.dart';
import 'package:chees_game/models/game_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const GameState._();

  const factory GameState({
    required Board board,
    required Cell? selectedCell,
    required Set<String> availablePositionsHash,
    required GameColors activeColor,
    required bool isAIthinking,
  }) = _GameState;
}
