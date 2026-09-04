import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String linha1 = "";
  String linha2 = "";
  String linha3 = "";
  String linha4 = "";
  String linha5 = "";
  String linha6 = "";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _segundaH() {
    setState(() {
      linha1 = "Historia aula 1";
      linha2 = "Historia aula 2";
      linha3 = "IOT aula 3";
      linha4 = "IOT aula 4";
      linha5 = "Ingles aula 5";
      linha6 = "Ingles aula 6";
      _counter++;
    });
  }

  void _tercaH() {
    setState(() {
      linha1 = "geografia aula 1";
      linha2 = "geografia aula 2";
      linha3 = "sociologia aula 3";
      linha4 = "portugues aula 4";
      linha5 = "portugues aula 5";
      linha6 = "matematico aula 6";
      _counter++;
    });
  }

  void _quartaH() {
    setState(() {
      linha1 = "CNW II aula 1";
      linha2 = "CNW II aula 2";
      linha3 = "GCW aula 3";
      linha4 = "GCW aula 4";
      linha5 = "UBW aula 5";
      linha6 = "UB aula 6";
      _counter++;
    });
  }

  void _quintaH() {
    setState(() {
      linha1 = "SW II aula 1";
      linha2 = "SW II aula 2";
      linha3 = "TCC  aula 3";
      linha4 = "TCC  aula 4";
      linha5 = "Portugues aula 5";
      linha6 = "Filosofia aula 6";
      _counter++;
    });
  }

  void _sextaH() {
    setState(() {
      linha1 = "Matematica aula 1";
      linha2 = "Matematica aula 2";
      linha3 = "Espanhol aula 3";
      linha4 = "Espanhol aula 4";
      linha5 = "DDM II aula 5";
      linha6 = "DDM II aula 6";
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as doneF
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _segundaH,
                    child: const Text("Seg"),
                  ),
                  ElevatedButton(onPressed: _tercaH, child: const Text("Ter")),
                  ElevatedButton(onPressed: _quartaH, child: const Text("Qua")),
                  ElevatedButton(onPressed: _quintaH, child: const Text("Qui")),
                  ElevatedButton(onPressed: _sextaH, child: const Text("Sex")),
                ],
              ),
            ),
            Text('$linha1', style: Theme.of(context).textTheme.headlineMedium),
            Text('$linha2', style: Theme.of(context).textTheme.headlineMedium),
            Text('$linha3', style: Theme.of(context).textTheme.headlineMedium),
            Text('$linha4', style: Theme.of(context).textTheme.headlineMedium),
            Text('$linha5', style: Theme.of(context).textTheme.headlineMedium),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
