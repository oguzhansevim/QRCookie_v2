import 'package:qrcookie_v2/core/base/base_stateful.dart';
import 'history.dart';

abstract class HistoryViewModel extends BaseStateful<History> {
  void deleteBarcode(id) async {
    await databaseHelper.delete(id);
  }
}
