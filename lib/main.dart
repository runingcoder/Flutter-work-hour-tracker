import 'package:flutter/material.dart';
import 'pages/heatmap_calendar_example.dart';
import 'pages/heatmap_example.dart';
import 'package:provider/provider.dart';
import 'authContext.dart';

void main() {
  runApp(ChangeNotifierProvider<HeatMapDataSetHere>(
      create: (_) => HeatMapDataSetHere(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Heatmap Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/heatmap_calendar': (context) => const HeatMapCalendarExample(),
        '/heatmap': (context) => const HeatMapExample(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: const Text('Work Hours Track App')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    shape: RoundedRectangleBorder(
                      //<-- SEE HERE
                      side: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: const Text(' Hours in Calendar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    trailing: Icon(color: Colors.blue, Icons.calendar_today),
                    onTap: () =>
                        Navigator.of(context).pushNamed('/heatmap_calendar'),
                  ),
                  SizedBox(height: 50),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      //<-- SEE HERE
                      side: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: const Text('Flutter Heatmap',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    trailing:
                        Icon(color: Colors.green, Icons.calendar_month_rounded),
                    onTap: () => Navigator.of(context).pushNamed('/heatmap'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Image(
                height: 550, //or BoxFit.fill
                image: AssetImage(
                  'images/marcus.jpg',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
