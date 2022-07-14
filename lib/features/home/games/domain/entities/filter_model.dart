enum FilterModel {
  all,
  open,
  inProgress,
  finished,
}

extension FilterModelExtension on FilterModel {
  String get label {
    switch (this) {
      case FilterModel.open:
        return 'Open';
      case FilterModel.finished:
        return 'Finished';
      case FilterModel.inProgress:
        return 'In progress';
      case FilterModel.all:
        return 'All games';
      default:
        return '';
    }
  }

  String? get status {
    switch (this) {
      case FilterModel.all:
        return null;
      case FilterModel.inProgress:
        return 'progress';
      default:
        return name.toString();
    }
  }

  bool isOpen() {
    return this == FilterModel.open;
  }

  bool isClosed() {
    return this == FilterModel.finished;
  }

  bool isInProgress() {
    return this == FilterModel.inProgress;
  }

  bool isAll() {
    return this == FilterModel.all;
  }
}
