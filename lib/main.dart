import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final int _selectedDestination = 1;

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String user = 'Gabriel';
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ola ${user}"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('header', style: textTheme.headline6),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('item 1'),
              selected: _selectedDestination == 0,
              //onTap: () => selectDestination(0),
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('item 2'),
              selected: _selectedDestination == 0,
              //onTap: () => selectDestination(0),
            ),
          ],
        ),
      ),
    );
  }
}
