import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

late User loggedinUser;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.pushNamed(context, 'home_screen');
          break;

        case 1:
          Navigator.pushNamed(context, 'message');
          break;

        case 2:
          Navigator.pushNamed(context, 'discover');
          break;

        case 3:
          Navigator.pushNamed(context, 'network');
          break;
      }
    });
  }

  void initState() {
    super.initState();
    getCurrentUser();
  }

  //using this function you can use the credentials of the user
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          // Add padding around the search bar
          padding: const EdgeInsets.fromLTRB(10, 5, 20, 0),
          // Use a Material design search bar
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 10, 0),

              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              icon: IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    _auth.signOut();
                    Navigator.of(context).popUntil(
                        (route) => route.settings.name == "welcome_screen");

                    //Implement logout functionality
                  }),
            ),
          ),
        ),
        CarouselSlider(
          items: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/carousel.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/carousel.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/carousel.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 700),
            viewportFraction: 0.8,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          child: const Text(
            "Upcoming Events",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ),
        CarouselSlider(
          items: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: kElevationToShadow[1],
                image: const DecorationImage(
                  image: AssetImage("assets/images/carousel.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Lorem ipsum',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: kElevationToShadow[1],
                image: const DecorationImage(
                  image: AssetImage("assets/images/carousel.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Lorem ipsum',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: kElevationToShadow[1],
                image: const DecorationImage(
                  image: AssetImage("assets/images/carousel.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Lorem ipsum',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: true,
            aspectRatio: 1.5,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 700),
            viewportFraction: 0.8,
          ),
        ),
        Container(
            padding: const EdgeInsets.all(5.0),
            child: PhysicalShape(
              elevation: 5.0,
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              color: const Color.fromARGB(255, 0, 60, 81),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    width: 100.0,
                    child: Center(
                      child: Image.asset(
                        'assets/images/conference.png',
                        fit: BoxFit.cover,
                        height: 50, // set your height
                        width: 70, // and width here
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 75.0,
                        width: 250.0,
                        child: Center(
                          child: Text(
                            'One to one with the stakeholders',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 16, 103, 114),
                            elevation: 12.0,
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: const Text('Make an appointment',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Container(
            padding: const EdgeInsets.all(5.0),
            child: PhysicalShape(
              elevation: 5.0,
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              color: const Color.fromARGB(255, 35, 31, 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 75.0,
                        width: 250.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              'Explore Yourself',
                              style: TextStyle(
                                  height: 2,
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '  Every minute is an oppurtunity,here is your next step..',
                              style: TextStyle(
                                  height: 1,
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 0, 151, 172),
                            elevation: 12.0,
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: const Text('Choose your path',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150.0,
                    width: 124.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/artboard.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Network',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 84, 184, 136),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
