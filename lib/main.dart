import 'package:flutter/material.dart';                                                     //Importa el paquete material.dart
//COMENTAR todo lo que pueda identificar

void main() {                                                                               //función main, con void para no requerir un RETURN
  runApp(const MyApp());                                                                    //ejecuta la aplicación, que se llamará myapp
}

class MyApp extends StatelessWidget {                                                       //clase myapp es subclase de statelesswidget
  const MyApp({super.key});                                                                 //constante super.key dentro de myapp

  // This widget is the root of your application.
  @override                                                                                 //OVERRIDE permite a un metodo de una subclase sobreescribir el mismo metodo de su superclase padre
  Widget build(BuildContext context) {                                                      //metodo build dentro de la clase widget, es obligatorio en todas las clases widget
    return MaterialApp(                                                                     //RETURN del método materialApp
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),                  //paleta de colores
        useMaterial3: true,                                                                 //booleano indica que useMaterial3 es VERDADERO
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),                              //el titulo es constante en myhomepage
    );
  }
}

class MyHomePage extends StatefulWidget {                                                   //subclase myhomepage extiende de la superclase statefulwidget
  const MyHomePage({super.key, required this.title});                                       //super.key y el titulo de myhomepage son constantes

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;                                                                      //final es similar a const, no permite cambiar la variable title, pero solo se aloja en memoria al utilizar title y no desde el inicio

  @override                                                                                //OVERRIDE permite a un metodo de una subclase sobreescribir el mismo metodo de su superclase padre
  State<MyHomePage> createState() => _MyHomePageState();                                   //tipo de estado que se crea (myhomepage), se crea con createstate()
}

class _MyHomePageState extends State<MyHomePage> {                                        //_myhomepagestate es una subclase de state<myhomepage>
  int _counter = 0;                                                                       //metodo _counter es de tipo ENTERO con un inicializador de 0

  void _incrementCounter() {                                                              //método _incrementcounter
    setState(() {                                                                         //actualiza el estado
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;                                                                         //se muestra el valor de _counter y posteriormente se le agrega una unidad
    });
  }

  @override                                                                               //OVERRIDE permite a un metodo de una subclase sobreescribir el mismo metodo de su superclase padre
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(                                                                      //sentencia RETURN, la función termina al alcanzar esto. el scaffold es para el diseño de la estructura visual
      appBar: AppBar(                                                                     
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,                    //tema y color del fondo
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),                                                        
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,                                    //Alineamiento principal en el centro
          children: <Widget>[ //
            const Text(                                                                   //texto "You have pushed the button this many times:" no cambia
              'You have pushed the button this many times:',
            ),
            Text(                                                                         //Parece que llama al metodo _counter con un estilo de texto especifico
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(                                         //botón flotante que al presionarse llama al metodo _incrementcounter, tiene como descripción 'increment' y un icono
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
