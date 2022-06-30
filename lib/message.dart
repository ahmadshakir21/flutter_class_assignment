import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 80, bottom: 30),
            child: Text(
              "Message",
              style: TextStyle(fontSize: 25 , color: Colors.black),
            ),
          )),
          Container(
            height: 125,
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 229, 229, 229),
                border: Border.all(width: 2, color: Colors.green)),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                style: TextStyle(fontSize: 16, color: Colors.green),
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
                color: const Color.fromARGB(255, 229, 229, 229),
                border: Border.all(width: 2, color: Colors.green)),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                style: TextStyle(fontSize: 16, color: Colors.green),
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
                color: const Color.fromARGB(255, 229, 229, 229),
                border: Border.all(width: 2, color: Colors.green)),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                style: TextStyle(fontSize: 16, color: Colors.green),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Divider(thickness: 1.5, color: Colors.grey),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text("Send a message" , style: TextStyle(fontSize: 20 , color: Colors.black),),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){},icon:const Icon(Icons.send)),
                    hintText: 'Message',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black)))),
          ),
        ]),
      ),
    );
  }
}
