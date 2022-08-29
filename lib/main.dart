import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:introduction_dart_langauge/classes/pokedex.dart';
import 'package:introduction_dart_langauge/screens/SecondScreen.dart';

import 'classes/pokemon.dart';

void main() {
  runApp(const MyApp());
}

String pokemonName(String? name) {
  if (name == "chua") {
    return "terrorist";
  }
  return ('My Pokemon is: $name');
}

String pokemonName2(String pokemon) => 'this is from pokemon2 $pokemon';
// chua == auhc poop = poop
bool isPalindrome(String text) => text == text.split('').reversed.join();

String testing101([String? temp = "pokemon"]) {
  return ('my string $temp');
}

void test() {
  pokemon testingClasses = pokemon("pikachu", 1);
  pokemon testingClasses2 = pokemon("charizard", 1);
  pokemon testingClasses3 = pokemon("balbusaur", 1);
  pokemon testingClasses4 = pokemon("suicoon", 1);

  List<pokemon> arraytesting = [
    testingClasses,
    testingClasses2,
    testingClasses3,
    testingClasses4
  ];

  pokedex diamonPearl2 = pokedex(1, arraytesting);
  diamonPearl2.displayAllPokemon();
/*
  for(int i=0;i<arraytesting.length;i++){
    print(diamonPearl2.pokemonList[i].name);
  }
 */
  print(testingClasses3.name);
  // pokemon pokemon1 = pokemon(1, "pikachu");
  print(isPalindrome("chua"));
  int number = 10;
  String name = "lancer";
  bool visibility = true;
  var anything = 123;
  //var pokemon = "abs";
  // print(pokemonName("chua"));

  // print(testing101("lol"));
//  print(pokemonName2("pokemon 12u90382098103981203982190381209381203823910831029821092831823098132x"));

  print("This is a number:  $number $anything $pokedex");

  print(pokemonName("pikachu"));
  print(pokemonName2("charizard"));
  print(isPalindrome("poop"));
/*
  pokemon pokemon1 = pokemon(1, "pikachu");
  pokemon pokemon2 = pokemon(1, "charizard");
  pokemon pokemon3 = pokemon(1, "balbusaur");

  List<pokemon> pokedexLiost = [pokemon1, pokemon2, pokemon3];

  print(pokedexLiost.length);
  print(pokedexLiost[1].name);

  pokedex diamondPearl = pokedex(001, pokedexLiost);
  print(diamondPearl.pokemonList[0].name);

  Future<int>.delayed(
    Duration(seconds: 3),
    () {
      return 100;
    },
  ).then((value) => print(value)).catchError((onError) {
    print('Caught $onError');
  });

  print('waiting');


 */
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,

        ),
        home: MyUi());
  }
}

class MyUi extends StatefulWidget {
  const MyUi({Key? key}) : super(key: key);

  @override
  State<MyUi> createState() => _MyUiState();
}

class _MyUiState extends State<MyUi> {
  int counter = 10;

  void _incrementCounter(){
    setState(() {
      counter++;
    });

    print('Pokemon $counter');

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text("This is my appbar"),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/asset/image.png',width: 100.0,height: 100.0,),
            Text('$counter'),
            Container(
              child: Text('$counter',style: TextStyle(
                fontFamily: 'Grypen',
                fontSize: 50,
                color:Colors.cyan
              ),),
              color: Colors.red,
            ),
            RaisedButton(onPressed:(){ _incrementCounter(); }, child: Text("Button"),),
            FlatButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
            }, child: Text("tekan saya!"),color: Colors.grey[800],),
            Container(
              margin: EdgeInsets.fromLTRB(0,30.0, 0, 0),
              child: Text("$counter pokemon\"s "),
              color: Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("name"),
                Container(
                  padding:EdgeInsets.all(100.0),
                  child: Text('charizard',style: TextStyle(
                    fontFamily: 'Grypen'
                  ),),
                  color: Colors.green,
                ),
              ],
            ),
            Column(
              children: [
                Text("THIS IS NEW COLUMN")
              ],
            )
          ],
        ));
  }
}

class MyHomePage extends StatefulWidget {
  //constructor
  const MyHomePage({Key? key, required this.title, required this.pokemon})
      : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String pokemon;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void pokemon() {
    print("i like pokemon");
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.pokemon),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text("Charizard")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
