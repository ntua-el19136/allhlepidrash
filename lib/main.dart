import 'package:flutter/material.dart';

void main() {
  runApp(const ParkareTo());
}

class ParkareTo extends StatelessWidget {
  const ParkareTo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParkareTo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}): super(key:key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    const Text('OPTIONS'),
                  ])
              ),
              const Divider(
            height: 20,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: const Text('Notifications & Sound'),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: <Widget>[
                const Text('Advertisement Pop-ups'),
                Switch(
            value: isSwitched1,
            onChanged: (value) {
              setState(() {
                isSwitched1 = value;
              });
            },
            activeTrackColor: Colors.lightBlueAccent,
            activeColor: Color.fromARGB(255, 2, 73, 131),
          ),
                  ]
              )
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: <Widget>[
                const Text('Vibration during Notifications'),
                Switch(
            value: isSwitched2,
            onChanged: (value) {
              setState(() {
                isSwitched2 = value;
              });
            },
            activeTrackColor: Colors.lightBlueAccent,
            activeColor: Color.fromARGB(255, 2, 73, 131),
          ),
                  ]
              )
              ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                  const Text('Sound'),
                 Slider(
                  inactiveColor: Colors.lightBlueAccent,
                  activeColor: Color.fromARGB(255, 2, 73, 131),
        value: _currentSliderValue,
        max: 100,
        divisions: 100,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
                  ],
                ),
              ),
              const Divider(
            height: 20,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: <Widget>[
              Flexible(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minWidth: double.infinity, minHeight: 50),
                      child: TextButton.icon(
                        icon: Icon(Icons.circle,
                            color: Color.fromARGB(255, 2, 73, 131)), // Your icon here
                        label: Text('Points System',
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 73, 131))), // Your text here
                        onPressed: () {},
                      )))
            ])),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: <Widget>[
              Flexible(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minWidth: double.infinity, minHeight: 50),
                      child: TextButton.icon(
                        icon: Icon(Icons.square,
                            color: Color.fromARGB(255, 2, 73, 131)), // Your icon here
                        label: Text('Offers',
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 73, 131))), // Your text here
                        onPressed: () {},
                      )))
            ])),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: <Widget>[
              Flexible(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minWidth: double.infinity, minHeight: 50),
                      child: TextButton.icon(
                        icon: Icon(Icons.person,
                            color: Color.fromARGB(255, 2, 73, 131)),
                        label: Text('About us',
                            style: TextStyle(
                                color: Color.fromARGB(255, 2, 73, 131))), 
                        onPressed: () {},
                      )))
            ]))
            ]
          ),
          color: Color.fromARGB(255, 221, 185, 118),
        )
      ) ,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 73, 131),
        title: Padding(padding: EdgeInsets.only(left:70),
          child: Text('ParkareTo'),
        ),
        leading: Builder(builder: (BuildContext context) {
                    return Padding(padding: EdgeInsets.only(left:20),
                      child: IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      tooltip: 'Settings'
                    ),
                    );
                  }),
        actions: [Padding(padding: EdgeInsets.only(right:70),
                    child: IconButton(
                    icon: Icon(Icons.car_repair),
                      onPressed: () {},
                      tooltip: 'Android Auto',
                  ),
        ),
        Padding(padding: EdgeInsets.only(right:20),
                    child: IconButton(
                    icon: Icon(Icons.person),
                      onPressed: () {},
                      tooltip: 'Profile',
                  ),
        ),
        ]
        ),
      body: Image(
        image: AssetImage('assets/images/map.png')),
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(8.0),
              child: SizedBox( 
            height:40,
            width: double.infinity, 
            child:ElevatedButton(
              
            onPressed: () {},
             child: const Text('CHOOSE VEHICLE', style: TextStyle(color: Colors.white)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
        ),
          ),
          ),
          Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
          Padding(padding: const EdgeInsets.all(8.0),
          child: SizedBox( 
            height:30,
            width:150, 
            child:ElevatedButton(
            onPressed: () {},
             child: const Text('OFFERS', style: TextStyle(color: Colors.white)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 73, 131))),
        ),
          ),
          ),
        Padding(padding: const EdgeInsets.all(8.0),
          child: SizedBox( 
            height:30,
            width:150, 
            child:ElevatedButton(
            onPressed: () {},
             child: const Text('SHOP', style: TextStyle(color: Colors.white)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 73, 131))),
        ),
          ),
          ),
        Padding(padding: const EdgeInsets.all(8.0),
          child: SizedBox( 
            height:30,
            width:150, 
            child:ElevatedButton(
            onPressed: () {},
             child: const Text('HISTORY', style: TextStyle(color: Colors.white)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 73, 131))),
        ),
          ),
          ),
          ]
          ),
        ],
        ),
        color: Color.fromARGB(255, 221, 185, 118),


      
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.mic),
      onPressed: () {},
      backgroundColor: Colors.lightBlueAccent,
      tooltip: 'Voice Command'
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

}