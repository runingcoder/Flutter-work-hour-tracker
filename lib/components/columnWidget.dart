import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:provider/provider.dart';
import '../authContext.dart';

const durationTime = Duration(seconds: 1);
bool isOpacityMode = true;

class ColumnWidget extends StatelessWidget {
  ColumnWidget({required this.title});
  final int title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$title hr card',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 20)),
        ),
        Card(
          margin: const EdgeInsets.all(20),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: HeatMap(
              scrollable: true,
              colorMode: isOpacityMode ? ColorMode.color : ColorMode.opacity,
              datasets:
                  Provider.of<HeatMapDataSetHere>(context).getHeatMapDatasets(),
              colorsets: const {
                1: Colors.yellow,
                3: Colors.orange,
                5: Colors.red,
                7: Colors.green,
                9: Colors.blue,
                11: Colors.indigo,
                13: Colors.purple,
              },
              onClick: (value) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: durationTime,
                    content: Text(DateFormat('d MMM yyyy').format(value))));
              },
            ),
          ),
        ),
      ],
    );
  }
}
