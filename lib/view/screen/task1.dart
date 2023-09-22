import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 1000,
      color: Colors.black,
      child: Center(
        child: Container(
          width: 380,
          padding: const EdgeInsets.only(
              top: 0, right: 20.0, left: 20.0, bottom: 10.0),
          height: 460,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 54, 62, 57),
            gradient: const LinearGradient(
                begin: Alignment(-1.0, -8.0),
                colors: [
                  Color.fromARGB(166, 0, 255, 98),
                  Color.fromARGB(255, 44, 46, 45)
                ]),
            boxShadow: const [
              BoxShadow(color: Color.fromARGB(0, 93, 98, 94), spreadRadius: 3),
            ],
          ),
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(310, 0, 0, 0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                  ),
                  iconSize: 30,
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
              child: const Text(
                "What Do You think of our website ?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 40, 10),
              margin: const EdgeInsets.fromLTRB(0, 0, 75, 0),
              child: const Text(
                "Please share your experience ,\n"
                "it will help us to become better",
                style: TextStyle(
                  color: Color.fromARGB(255, 163, 163, 163),
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 80,
              width: 400,
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              // color: Colors.amber,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 35, left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: const Image(
                      image: AssetImage('images/Bad.jpg'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: const Image(
                      image: AssetImage('images/OK.jpg'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: const Image(
                      image: AssetImage('images/cool.jpg'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: const Image(
                      image: AssetImage('images/ecx.jpg'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 40, left: 30, bottom: 20),
                    child: Text(
                      "BAD",
                      style:
                          TextStyle(color: Color.fromARGB(255, 123, 123, 123)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 35, left: 10, bottom: 20),
                    child: Text(
                      "OKAY",
                      style:
                          TextStyle(color: Color.fromARGB(255, 123, 123, 123)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 30, bottom: 20),
                    child: Text(
                      "GOOD",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "EXCELLENT",
                      style:
                          TextStyle(color: Color.fromARGB(255, 123, 123, 123)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: TextField(
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Descripe your feedback",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 141, 141, 141))),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor:
                              const Color.fromARGB(57, 158, 158, 158),
                          disabledBackgroundColor:
                              const Color.fromARGB(193, 255, 255, 255)),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "I'll do it later",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 0, 255, 145),
                          disabledBackgroundColor:
                              const Color.fromARGB(193, 255, 255, 255)),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
