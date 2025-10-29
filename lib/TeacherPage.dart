import 'package:flutter/material.dart';
import 'package:educationalapp/ColorScheme.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({super.key});

  @override
  State<TeacherPage> createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  int selectedDate = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFADD8E6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Row(
            children: [
              // Left: Image Stack
              Container(
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/backicon.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 2,
                      child: Hero(tag: "male", child: SizedBox.shrink()),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                            image:
                            AssetImage('assets/images/teachericon.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Right: Teacher details
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mr. Peter Parker",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'product',
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "English Teacher",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: darkBlue,
                          fontFamily: 'circe',
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(Icons.star, color: darkBlue, size: 18),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.9 Star Rating",
                            style: TextStyle(fontFamily: 'circe'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/blommers.png'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "5 years Experience",
                            style: TextStyle(fontFamily: 'circe'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // 🔹 Main content section
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30),
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About Peter',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fontFamily: 'product',
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. "
                          "Reiciendis voluptas perspiciatis explicabo placeat ipsa sed, "
                          "quisquam quis aspernatur cum commodi dignissimos provident "
                          "quae distinctio tempora in tenetur! Minima, sapiente amet?",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Courses By Peter',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fontFamily: 'product',
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            courseWidget("icon1", "Young \nleaders",
                                "GRADE 0-1", lightBlue, darkBlue),
                            courseWidget("icon2", "Young \nbloomers",
                                "GRADE 0-2", yellow, darkBlue),
                            courseWidget("icon3", "Young \nachievers",
                                "GRADE 0-3", pink, darkBlue),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Availability",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        fontFamily: 'product',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i <= 7; i++) dateWidget(i),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            timeSlotWidget("11:00 AM", false),
                            timeSlotWidget("01:00 PM", false),
                            timeSlotWidget("03:00 PM", false),
                            timeSlotWidget("05:00 PM", true),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            timeSlotWidget("04:00 AM", false),
                            timeSlotWidget("06:00 PM", false),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // 🔹 Bottom button
          Container(
            color: Colors.white,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20, right: 20, left: 30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: darkBlue,
              ),
              child: const Center(
                child: Text(
                  "Have an appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'circe',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Time slot widget
  Container timeSlotWidget(String time, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: (isSelected) ? pink : lightBlue.withOpacity(0.3),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.watch_later,
            size: 10,
            color: Colors.grey,
          ),
          const SizedBox(width: 9),
          Text(
            time,
            style: const TextStyle(
              fontSize: 10,
              fontFamily: 'circe',
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Date widget
  InkWell dateWidget(int i) {
    DateTime tempDate = DateTime.now().add(Duration(days: i));
    return InkWell(
      onTap: () {
        setState(() {
          selectedDate = tempDate.day;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        height: 60,
        width: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: (selectedDate == tempDate.day)
              ? yellow
              : lightBlue.withOpacity(0.2),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              dayValue(tempDate.weekday),
              style: const TextStyle(fontSize: 10),
            ),
            Text(
              tempDate.day.toString(),
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Convert weekday to string
  String dayValue(int weekdayValue) {
    List<String> dayString = [
      "",
      "Mon",
      "Tue",
      "Wed",
      "Thur",
      "Fri",
      "Sat",
      "Sun"
    ];
    return dayString[weekdayValue];
  }

  // 🔹 Course widget
  Container courseWidget(String img, String name, String grade, Color color,
      Color textColor) {
    return Container(
      height: 100,
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  grade,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/$img.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
