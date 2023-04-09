import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

void main() {
  runApp(const MyApp8());
}

class MyApp8 extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage22(),
    );
  }
}

class MyHomePage22 extends StatefulWidget {
  const MyHomePage22({Key? key}) : super(key: key);

  @override
  State<MyHomePage22> createState() => _MyHomePage22State();
}

class _MyHomePage22State extends State<MyHomePage22> {
  List<Map<String, String>> _elements = [
    {'name': 'Platon', 'group': 'Teistler-Deistler'},
    {'name': 'Kant', 'group': 'Teistler-Deistler'},
    {'name': 'Voltaire', 'group': 'Teistler-Deistler'},
    {'name': 'Locke', 'group': 'Teistler-Deistler'},
    {'name': 'Marx', 'group': 'Ateistler'},
    {'name': 'Hume', 'group': 'Ateistler'},
    {'name': 'Nietzsche', 'group': 'Ateistler'},
    {'name': 'Protagoras', 'group': 'Agnostikler'},
    {'name': 'Arkesilaos', 'group': 'Agnostikler'},
  ];

  @override
  Widget build(BuildContext context) {
    Padding(
      padding: const EdgeInsets.all(8.0),
      //  child: ElevatedButton(onPressed: null, child: Text('Felsefeye dön')),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: const Text('Anasayfaya Dön'),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Din Felsefesi"),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        // optional (sorts list alphabetically)
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.ASC, // optional
        useStickyGroupSeparators: true, // optional (keeps header at top)
        floatingHeader: true, // optional (hides background of header)
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        itemBuilder: (ctx, element) {
          return Card(
            elevation: 8.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text(element['name']),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}
