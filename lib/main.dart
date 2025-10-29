import 'package:flutter/material.dart';
import 'package:educationalapp/ColorScheme.dart';
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
      home:  const MyHomePage(title: '',) ,
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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 50), // Move image 50px up
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
                    style: TextStyle(fontSize: 13, fontFamily: 'circe'),
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
                    style: TextStyle(fontSize: 12, fontFamily: 'circe'),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 25,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                          darkBlue, // ✅ ensure this color is defined in ColorScheme.dart
                        ),
                        child: IconButton(
                          onPressed: openHomePage, // ✅ navigate to HomePage
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
