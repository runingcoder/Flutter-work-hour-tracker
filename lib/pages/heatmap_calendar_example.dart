import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/AddEntry.dart';
import '../components/columnWidget.dart';

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
          ColumnWidgetCalendar(title: 2),
          ColumnWidgetCalendar(title: 4),
          ColumnWidgetCalendar(title: 6),
          ColumnWidgetCalendar(title: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Color Mode'),
              CupertinoSwitch(
                value: isOpacityMode1,
                onChanged: (value) {
                  setState(() {
                    isOpacityMode1 = value;
                  });
                },
              ),
              const Text('Opacity Mode'),
            ],
          ),
        ])),
      ),
    );
  }
}
