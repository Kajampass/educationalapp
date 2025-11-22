import 'package:flutter/material.dart';
import 'package:educationalapp/color_scheme.dart';
import 'package:educationalapp/HomePage.dart';
import 'package:educationalapp/TeacherPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Educational App',
      home: const MyHomePage(
        title: 'Educational Latest',
      ),
      routes: {
        '/HomePage': (context) => const HomePage(),
        '/TeacherPage': (context) => const TeacherPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        //added the above padding, so you have some space before the bottom of the screen
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 20), //
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/KidsEuro.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'WHERE KIDS LOVE LEARNING',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'circe'),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Distant learning & Home \n Schooling Made Easy',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'circe',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Our mission is to make learning fun,accessible, '
                    '\n and inspiring for every child, helping them'
                    '\n grow smarter and more confident daily.',
                    style: TextStyle(fontSize: 15, fontFamily: 'circe'),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 25,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: darkBlue,
                        ),
                        child: IconButton(
                          onPressed: openHomePage, //  navigate to HomePage
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openHomePage() {
    Navigator.pushNamed(context, '/HomePage'); // ✅ fixed route name
  }
}
