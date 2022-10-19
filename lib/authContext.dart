import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeatMapDataSetHere extends ChangeNotifier {
  Map<DateTime, int> heatMapDatasets = {};
  Map<DateTime, int> heatMapDatasets2 = {};
  Map<DateTime, int> heatMapDatasets4 = {};
  Map<DateTime, int> heatMapDatasets6 = {};
  Map<DateTime, int> heatMapDatasets8 = {};
  var heatLevelController = TextEditingController();
  void updateHeatMap() {
    var inputtedNumber = int.parse(heatLevelController.text);
    if (inputtedNumber >= 2) {
      heatMapDatasets2[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets4 = {};
      heatMapDatasets6 = {};
      heatMapDatasets8 = {};
    }
    if (inputtedNumber >= 4) {
      heatMapDatasets4[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets2[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets6 = {};
      heatMapDatasets8 = {};
    }
    if (inputtedNumber >= 6) {
      heatMapDatasets6[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets4[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets2[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets8 = {};
    }
    if (inputtedNumber >= 8) {
      heatMapDatasets8[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets6[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets4[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
      heatMapDatasets2[
              DateTime.parse(DateFormat('yyyyMMdd').format(DateTime.now()))] =
          int.parse(heatLevelController.text);
    }

    notifyListeners();
  }
}
