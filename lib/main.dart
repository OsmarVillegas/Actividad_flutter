import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Contenedores',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(), //Se crea una clase nueva
    );
  }
}

//Borrar clase MyHomePage y crear Home con st - StatelessWidget
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/educacion.png',
          height: 40.0,
          width: 40.0,
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(Icons.dehaze),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Continua Estudiando',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    
                    width: 200,
                    height: 150,
                    color: Colors.amber,
                     child: Text("Este curso está diseñado para aquellos que desean aprender los conceptos básicos de la programación."),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.blue[100],
                    child: Text(" Curso de desarrollo web Este curso está diseñado para aquellos que desean aprender a desarrollar aplicaciones web. Los estudiantes aprenderán a usar HTML, CSS y JavaScript para crear páginas web atractivas y funcionales. "),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.green[100],
                    child: Text("Taller de fotografía Este taller está diseñado para aquellos que desean mejorar sus habilidades fotográficas. A lo largo del taller, los estudiantes aprenderán sobre la composición, la iluminación y la postproducción. "),
                  ),
                ),
                Padding(
                  
                  padding: EdgeInsets.all(8),
                  
                  child: Container(
                    width: 200,
                    height: 150,
                    color: Colors.blue[100],
                    child:Text("Especialidad en inteligencia artificial Esta especialidad está diseñada para aquellos que desean profundizar en el campo de la inteligencia artificial. Los estudiantes aprenderán sobre el aprendizaje automático, la visión por computadora y el procesamiento del lenguaje natural. "),
                   
                  ),
                ),
                
              ],
            ),
          ),
          ManejoTabs(),
          //const TabBarDemo(),
        ],
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class ManejoTabs extends StatefulWidget {
  const ManejoTabs({super.key});

  @override
  State<ManejoTabs> createState() => _ManejoTabsState();
}

class _ManejoTabsState extends State<ManejoTabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      //color: Colors.blue[100],
      child: Column(
        children: <Widget>[
          DefaultTabController(
            length: 3,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              indicator: BoxDecoration(color: Colors.black),
              tabs: [
                Tab(text: 'Cursos'),
                Tab(text: 'Workshops'),
                Tab(text: 'Especialidades'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ContenUno(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContenUno extends StatelessWidget {
  const ContenUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text(
          'Cursos de TI',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30, //¿Cómo cambiar color?
          ),
        ),
        Text(
          'Aquí podemos escribir una descipción completa que pueda ser  cambiante de acuerdo al tema especificado',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 20, //¿Cómo cambiar color?
          ),
        ),
        Icon(Icons.directions_car),
      ]),
    );
  }
}
