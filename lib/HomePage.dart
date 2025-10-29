import 'package:flutter/material.dart';
import 'package:educationalapp/ColorScheme.dart';
import 'package:educationalapp/TeacherPage.dart';

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
                            tutorWidget("male", "Mr. Peter Partner",
                                "English", "0-6", "206"),
                            tutorWidget("male", "Mr. Obi Saint",
                                "Yoruba", "0-9", "209"),
                            tutorWidget("female", "Mrs. Mary Ola",
                                "Justice", "0-7", "290"),
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

  // ✅ Fixed tutor widget
  Widget tutorWidget(
      String img, String name, String subj, String grade, String price) {
    return InkWell(
      onTap: openTeacherPage,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: lightBlue.withOpacity(0.3),
        ),
        child: Row(
          children: [
            Hero(
              tag: img,
              child: Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.star,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            // tutor details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                Text(subj),
                Text("Grade: $grade"),
                Text(
                  "₦$price/hr",
                  style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600),
                ),
              ],
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
