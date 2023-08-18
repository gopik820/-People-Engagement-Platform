import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

late User loggedinUser;

class Network extends StatefulWidget {
  @override
  _NetworkState createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 3;
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
              contentPadding: const EdgeInsets.fromLTRB(0, 0, 10, 0),

              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: const Icon(Icons.search),
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
        // Figma Flutter Generator MoremeetleadersWidget - FRAME
        Container(
            width: 360,
            height: 640,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                top: 61,
                left: 345,
                child: Container(
                    width: 218,
                    height: 176,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Teabreak1.png'),
                          fit: BoxFit.fitWidth),
                    )),
              ),
              const Positioned(
                  top: 93,
                  left: 32,
                  child: Text(
                    'TeaBreak with Leaders',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 151, 172, 1),
                        fontFamily: 'Roboto',
                        fontSize: 32,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 265,
                  left: 32,
                  child: SizedBox(
                      width: 294,
                      height: 210,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 40,
                            left: 0,
                            child: SizedBox(
                                width: 294,
                                height: 29,
                                child: Stack(children: <Widget>[
                                  const Positioned(
                                      top: 7,
                                      left: 0,
                                      child: Text(
                                        'Leader’s ID',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 100,
                                      child: Container(
                                          width: 194,
                                          height: 29,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                              width: 1,
                                            ),
                                          ))),
                                ]))),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: SizedBox(
                                width: 294,
                                height: 29,
                                child: Stack(children: <Widget>[
                                  const Positioned(
                                      top: 7,
                                      left: 0,
                                      child: Text(
                                        'Leader’s Name',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 100,
                                      child: Container(
                                          width: 194,
                                          height: 29,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                              width: 1,
                                            ),
                                          ))),
                                ]))),
                        Positioned(
                            top: 87,
                            left: 1,
                            child: SizedBox(
                                width: 293,
                                height: 29,
                                child: Stack(children: <Widget>[
                                  const Positioned(
                                      top: 7,
                                      left: 0,
                                      child: Text(
                                        'Available Date',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 99,
                                      child: Container(
                                          width: 194,
                                          height: 29,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                              width: 1,
                                            ),
                                          ))),
                                ]))),
                        Positioned(
                            top: 134,
                            left: 0,
                            child: SizedBox(
                                width: 294,
                                height: 29,
                                child: Stack(children: <Widget>[
                                  const Positioned(
                                      top: 7,
                                      left: 0,
                                      child: Text(
                                        'Your Email ID',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 100,
                                      child: Container(
                                          width: 194,
                                          height: 29,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                              width: 1,
                                            ),
                                          ))),
                                ]))),
                        Positioned(
                            top: 181,
                            left: 0,
                            child: SizedBox(
                                width: 294,
                                height: 29,
                                child: Stack(children: <Widget>[
                                  const Positioned(
                                      top: 7,
                                      left: 0,
                                      child: Text(
                                        'Phone No.',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 100,
                                      child: Container(
                                          width: 194,
                                          height: 29,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                              width: 1,
                                            ),
                                          ))),
                                ]))),
                      ]))),
              Positioned(
                  top: 498,
                  left: 133,
                  child: SizedBox(
                      width: 95,
                      height: 30,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 95,
                                height: 30,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                  color: Color.fromRGBO(0, 151, 172, 1),
                                ))),
                        const Positioned(
                            top: 7,
                            left: 24,
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ]))),
              Positioned(
                  top: 588,
                  left: 46,
                  child: SizedBox(
                      width: 268.23809814453125,
                      height: 40,
                      child: Stack(children: <Widget>[
                        const Positioned(
                            top: 2,
                            left: 0,
                            child: SizedBox(
                                width: 31.839168548583984,
                                height: 38,
                                child: Stack(children: <Widget>[]))),
                        Positioned(
                            top: 0,
                            left: 143,
                            child: SizedBox(
                                width: 43,
                                height: 38,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 9,
                                      child: SizedBox(
                                          width: 26,
                                          height: 26,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                    width: 26,
                                                    height: 26,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  26, 26)),
                                                    ))),
                                          ]))),
                                ]))),
                      ]))),
            ]))
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
