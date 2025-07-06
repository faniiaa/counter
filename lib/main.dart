import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
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

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mashgh...'),
        backgroundColor: Colors.white24,
        //BackButton(color: Colors.blueAccent,),
        leading: Icon(
          Icons.notification_add, color: Colors.indigoAccent,
        ),
      ),
       body: Wrap(
         children: [
           Text('sssssssssssoooooooommmmmmmmmmmeeeeeeeeeetttttttthhhhhhhhiiiiinng'),
           Text('ssssoooommmmeeeetttthhhhhiiiiinng bbbbbbiiiiiiggggggggggggggggg'),
           Text('ssssoooommmmeeeetttthhhhhiiiiinng big'),
           Text('ssssoooommmmeeeetttthhhhhiiiiinng big'),

         ],
       )
    // Container(
      //   padding: EdgeInsets.all(30),
      //   child: Stack(
      //     children: [
            // Image.asset(
            //   'assets/images/image2.jpg',
            //   height: double.infinity,
            //   fit: BoxFit.cover,
            // ),
            // Positioned(child:  Image.asset(
            //   'assets/images/image1.jpg',
            //   height: 250,
            //   fit: BoxFit.cover,
            // ),),
            // SizedBox(height: 900, child: Center(child: Text('Dream'))),
            // ListTile(
            //   tileColor: Colors.amber,
            //   leading: Icon(Icons.join_full),
            //   title: Text('Daily practice'),
            //   trailing: Text('continue'),
            //   onTap: () {
            //     print('clicked on Tile');
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Center(
          child: Container(
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text('Joje1', textAlign: TextAlign.center),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.indigo,
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text('Joje2', textAlign: TextAlign.center),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
