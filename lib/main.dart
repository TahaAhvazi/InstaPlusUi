import 'package:flutter/material.dart';
import 'package:instagram_clone/routes/explore.dart';
import 'package:instagram_clone/routes/home.dart';
import 'package:instagram_clone/routes/like.dart';
import 'package:instagram_clone/routes/profile.dart';
import 'package:instagram_clone/routes/upload.dart';
import 'package:instagram_clone/widgets/customappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;
  List<Widget> myRoutes = <Widget>[
    MainHome(),
    Exploer(),
    Upload(),
    Like(),
    Profile(),
  ];
  void _ontap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: CustomAppBar(),
      ),
      body: Center(
        child: myRoutes.elementAt(selectedindex),
      ),
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(22.0),
        child: SizedBox(
          height: 93.0,
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(49, 50, 59, 1),
                icon: selectedindex == 0
                    ? Image.asset("assets/images/selectedhomeicon.png")
                    : Image.asset("assets/images/unselectedhomeicon.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(49, 50, 59, 1),
                icon: selectedindex == 1
                    ? Image.asset("assets/images/selectedsearchicon.png")
                    : Image.asset("assets/images/unselectedsearchicon.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(49, 50, 59, 1),
                icon: selectedindex == 2
                    ? Image.asset("assets/images/instagramicon.png")
                    : Image.asset("assets/images/instagramicon.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(49, 50, 59, 1),
                icon: selectedindex == 3
                    ? Icon(
                        Icons.favorite,
                        color: Color.fromRGBO(217, 64, 138, 1),
                      )
                    : Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                label: "",
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(49, 50, 59, 1),
                icon: selectedindex == 4
                    ? Image.asset("assets/images/selectedprofile.png")
                    : Image.asset("assets/images/unselectedprofile.png"),
                label: "",
              ),
            ],
            currentIndex: selectedindex,
            onTap: _ontap,
          ),
        ),
      ),
    );
  }
}
