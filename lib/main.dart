import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash APP',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade100),
        // useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // return Container(
    //     color: Colors.white,
    //     child:FlutterLogo(size:MediaQuery.of(context).size.)
    // );
    return Scaffold(
      body: Center(
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 50.0),
              child: 
              // Image.network(
              //   'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
              //   height: 250,
              //   width: 300,
              //   fit: BoxFit.none,
              // ),
              Image.asset('assets/images/green-heart.png',
                height: 250,
                width: 300,)
            ),
            Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 100.0),
                child: const Text(
                  'Love Splash App',
                  style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 22.0),
                )),
          ],
        ),
      ),

    );
  }
}

class SecondScreen extends StatefulWidget {
 const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();

}

class _SecondScreenState extends State<SecondScreen>{

  bool show = true; //bool value to track show and hide for widget.
  String valAppBar = "Welcome!"; String valBody = "Hello there, Welcome to the Splash Verse!";
  Color color = Colors.pink; String iSave = 'Login';

  void _logIn(BuildContext cxt){
    Navigator.push(cxt, MaterialPageRoute(builder: (_) => const _LogInScreen()));
  }
  void _someToast(){
    if (kDebugMode) print('clicks here');
    setState(() {
      show = false;
      color = Colors.green;
      valAppBar = "Sign Up";
      valBody = 'Hye there, Hyper! Sign Up Now to Proceed.';
      iSave = 'Login Now!';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(valAppBar),
          leading: const Padding(padding: EdgeInsets.all(16.0), child: Icon(Icons.create_sharp)),
          leadingWidth: 30,
        actions: <Widget>[
      //   TextButton(
      //     style: TextButton.styleFrom(
      //   foregroundColor: Colors.white,
      //   padding: const EdgeInsets.all(16.0),
      //   textStyle: const TextStyle(fontSize: 18),
      // ), //   child: Text(iSave),
      //               // onPressed: ()=> _logIn(context),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                // Positioned.fill(
                //   child: Container(
                //     decoration: const BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: <Color>[
                //           Color(0xFF0D47A1),
                //           Color(0xFF1976D2),
                //           Color(0xFF42A5F5),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 100,
                  width: 150,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: ()=> _logIn(context),
                    child: Text(iSave),
                  ),
                ),

              ],
            ),


        ),
      ],),
      // body: Center(
      //     // child:Text("Welcome!",textScaleFactor: 2,),
      //   child: Stack(
      //     // alignment: Alignment.center,
      //     children: <Widget>[
      //       Container(
      //           margin: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 10.0),
      //           child: Text(valBody,
      //             style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 22.0),)
      //       ),
      //       Container(
      //           alignment: Alignment.center,
      //           // margin: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 100.0),
      //           child: ElevatedButton(
      //             onPressed: () => _someToast(),
      //               child: const Text('Tap to Proceed')),
      //           ),
      //     ],
      //   ),
      // ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.black,
            child: Icon(Icons.person, color: Colors.white, size: 50),
          ),
          Center(
            child: Text(
              'Sign Up Here',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Text(
            "Lori ipSeum",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
              children:[

                show?Container( //check if show == true, if true, then show container
                  height: 150,
                  color: Colors.lightBlue,
                ):Container(), //if show == false, show empty container.

                Divider(),

      Center(
            // child:Text("Welcome!",textScaleFactor: 2,),
          child: Stack(
            // alignment: Alignment.center,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 10.0),
                  child: Text(valBody,
                    style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 22.0),)
              ),
              Container(
                  alignment: Alignment.center,
                  // margin: const EdgeInsets.fromLTRB(0, 0.0, 0.0, 100.0),
                  child: ElevatedButton(
                    onPressed: () => _someToast(),
                      child: const Text('Tap to Proceed')),
                  ),
            ],
          ),
        ),

              ]
          ),
        )
        ],
      )
    );
  }

}

class _LogInScreen extends StatefulWidget {
  const _LogInScreen({super.key});

  @override
  State<_LogInScreen> createState()  => _LoginScreenState();
}

class _LoginScreenState extends State<_LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Now'),
        actions: [TextButton(onPressed: (){}, child: Text("Save My Info"))], // non_const as we might change text 'saving..'
      ),
    );
  }

}

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//        Fluttertoast.showToast(
//         msg: 'This is the Toast Count: $_counter',
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.yellow
//     );
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Hyper pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
