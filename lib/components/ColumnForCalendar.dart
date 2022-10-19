import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:provider/provider.dart';
import '../authContext.dart';

const durationTime = Duration(seconds: 1);

class ColumnWidgetCalendar extends StatelessWidget {
  ColumnWidgetCalendar({required this.title, required this.heatMapDataset});
  final int title;
  final Map<DateTime, int> heatMapDataset;

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
          margin: const EdgeInsets.all(10),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: HeatMapCalendar(
              flexible: true,
              colorMode: ColorMode.color,
              datasets: heatMapDataset,
              colorsets: const {
                1: Colors.green,
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
