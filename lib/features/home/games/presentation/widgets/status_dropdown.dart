import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/features/common/presentation/style/styles.dart';
import 'package:tictactoe/features/home/games/domain/entities/filter_model.dart';

import '../bloc/games_cubit.dart';

class StatusDropdown extends StatefulWidget {
  const StatusDropdown({Key? key}) : super(key: key);

  @override
  State<StatusDropdown> createState() => _StatusDropdownState();
}

class _StatusDropdownState extends State<StatusDropdown> {
  FilterModel dropdownValue = FilterModel.all;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppMargins.defaultMargins.copyWith(bottom: 0),
      width: double.infinity,
      child: DropdownButton<FilterModel>(
          value: dropdownValue,
          underline: Container(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          onChanged: (FilterModel? newValue) {
            setState(() {
              dropdownValue = newValue!;
              context.read<GamesCubit>().setFilter(dropdownValue);
            });
          },
          items: FilterModel.values.map((FilterModel value) {
            return DropdownMenuItem<FilterModel>(
              value: value,
              child: Text(value.label),
            );
          }).toList()),
    );
  }
}
