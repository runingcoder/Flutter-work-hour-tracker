import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeatMapDataSetHere extends ChangeNotifier {
  Map<DateTime, int> heatMapDatasets = {};
  var heatLevelController = TextEditingController();
  Map<DateTime, int> getHeatMapDatasets() {
    return heatMapDatasets;
  }

  void updateHeatMap() {
    heatMapDatasets[
            DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
        int.parse(heatLevelController.text);
    notifyListeners();
  }
}
