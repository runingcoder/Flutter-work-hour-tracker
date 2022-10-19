import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/AddEntry.dart';
import '../components/ColumnForCalendar.dart';
import 'package:provider/provider.dart';
import '../authContext.dart';

class HeatMapCalendarExample extends StatefulWidget {
  const HeatMapCalendarExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HeatMapCalendarExample();
}

class _HeatMapCalendarExample extends State<HeatMapCalendarExample> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController heatLevelController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    dateController.dispose();
    heatLevelController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddEntry(),
          );
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Heatmap'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: [
          ColumnWidgetCalendar(
            title: 2,
            heatMapDataset:
                Provider.of<HeatMapDataSetHere>(context).heatMapDatasets2,
          ),
          ColumnWidgetCalendar(
              title: 4,
              heatMapDataset:
                  Provider.of<HeatMapDataSetHere>(context).heatMapDatasets4),
          ColumnWidgetCalendar(
              title: 6,
              heatMapDataset:
                  Provider.of<HeatMapDataSetHere>(context).heatMapDatasets6),
          ColumnWidgetCalendar(
              title: 8,
              heatMapDataset:
                  Provider.of<HeatMapDataSetHere>(context).heatMapDatasets8),
        ])),
      ),
    );
  }
}
