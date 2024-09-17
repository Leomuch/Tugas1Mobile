import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _selectedIndex = 0;

  static const styleKu1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 10, 52, 87),
  );

  static const styleKu2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 84, 15, 27),
  );

  static const List<Widget> widgetOptions = <Widget>[
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Nama Kelompok :',
          style: styleKu1,
        ),
        Text(
          'Najwa Felira Zetti (2209106052)',
          style: styleKu2,
        ),
        Text(
          'Muchlas Andrey Pahlevi (2209106082)',
          style: styleKu2,
        )
      ],
    ),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(
        'Nama Dosen: ',
        style: styleKu1,
      ),
      Text(
        'Anton Prafanto',
        style: styleKu2,
      )
    ]),
    Text(
      'Halaman School',
      style: styleKu1,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        _selectedIndex = index;
        // Navigator.pushNamed(context, '/second');
      } else if (index == 1) {
        _selectedIndex = index;
      } else if (index == 2) {
        Navigator.pushNamed(context, '/search');
      } else if (index == 3) {
        Navigator.pushNamed(context, '/profile');
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
