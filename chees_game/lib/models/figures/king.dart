import 'package:chees_game/models/cell.dart';
import 'package:chees_game/models/cell_calculator.dart';
import 'package:chees_game/models/figure.dart';
import 'package:chees_game/models/figure_types.dart';
import 'package:chees_game/models/game_colors.dart';

class King extends Figure {
  King({required GameColors color, required Cell cell})
      : super(color: color, cell: cell, type: FigureTypes.king);

  @override
  bool availableForMove(Cell to) {
    if (!super.availableForMove(to)) {
      return false;
    }

    return CellCalculator.hasWayForKing(cell, to);
  }
}
