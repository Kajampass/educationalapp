import 'package:educationalapp/tutor_widget.dart';
import 'package:flutter/material.dart';
import 'package:educationalapp/color_scheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row 1, Hello  and John Scott
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'circe',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "John Scott",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'circe',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/KidsEuro.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            //Row 2 Search bar
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.black54),
                        SizedBox(width: 30),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for Courses or Tutor..",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Tutor Section
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top rated tutors",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TutorWidget(
                              img: "male",
                              name: "Mr. Peter Partner",
                              subj: "English",
                              grade: "0-6",
                              price: "206",
                              openTeacherPage: openTeacherPage,
                            ),
                            TutorWidget(
                              img: "male",
                              name: "Mr. Obi Saint",
                              subj: "Yoruba",
                              grade: "0-9",
                              price: "209",
                              openTeacherPage: openTeacherPage,
                            ),
                            TutorWidget(
                              img: "female",
                              name: "Mrs. Mary Ola",
                              subj: "Justice",
                              grade: "0-7",
                              price: "290",
                              openTeacherPage: openTeacherPage,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openTeacherPage() {
    Navigator.pushNamed(context, '/TeacherPage');
  }
}
