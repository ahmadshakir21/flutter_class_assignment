import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: Text(
                "Message",
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 24, 9, 66)),
              ),
            )),
            Container(
              height: 125,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 254, 254, 207),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 24, 9, 66))),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 24, 9, 66)),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 125,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 254, 254, 207),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 24, 9, 66))),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 24, 9, 66)),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 125,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 254, 254, 207),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 24, 9, 66))),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 24, 9, 66)),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
                thickness: 1.5, color: Color.fromARGB(255, 24, 9, 66)),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Send a message",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 24, 9, 66)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: Color.fromARGB(255, 24, 9, 66),
                          )),
                      hintText: 'Message',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 24, 9, 66))))),
            ),
          ]),
        ),
      ),
    );
  }
}
