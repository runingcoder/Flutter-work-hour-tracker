import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/AddEntry.dart';
import '../components/columnWidget.dart';

class HeatMapExample extends StatefulWidget {
  const HeatMapExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HeatMapExample();
}

class _HeatMapExample extends State<HeatMapExample> {
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
          ColumnWidget(title: 2),
          ColumnWidget(title: 4),
          ColumnWidget(title: 6),
          ColumnWidget(title: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Color Mode'),
              CupertinoSwitch(
                value: isOpacityMode,
                onChanged: (value) {
                  setState(() {
                    isOpacityMode = value;
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
