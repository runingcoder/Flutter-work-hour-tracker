import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:provider/provider.dart';
import '../authContext.dart';
import 'textField.dart';

class AddEntry extends StatefulWidget {
  const AddEntry({Key? key}) : super(key: key);

  @override
  State<AddEntry> createState() => _AddEntryState();
}

class _AddEntryState extends State<AddEntry> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      textField('Hours of Hustle',
          Provider.of<HeatMapDataSetHere>(context).heatLevelController),
      ElevatedButton(
          child: const Text('COMMIT'),
          onPressed: () {
            Provider.of<HeatMapDataSetHere>(context, listen: false)
                .updateHeatMap();

            Navigator.pop(context);
          }),
    ]);
  }
}
