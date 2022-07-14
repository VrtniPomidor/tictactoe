import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/features/home/games/domain/entities/filter_model.dart';

void main() {
  test('Correct status for backend on all', () {
    final statusBackendExpects = <FilterModel, String?>{
      FilterModel.all: null,
      FilterModel.open: 'open',
      FilterModel.inProgress: 'progress',
      FilterModel.finished: 'finished',
    };

    FilterModel.values.map((element) {
      expect(element.status, statusBackendExpects[element]);
    });
  });
}
