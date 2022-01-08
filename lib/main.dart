import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Interest Calculator",
      home: const HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p="", t="", r="", result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            // For Principal
            TextField(
              onChanged: (val){
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Enter Principal",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            // For Time
            TextField(
                onChanged: (val){
                t = val;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Enter Time",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            // For Rate
            TextField(
                onChanged: (val){
                r = val;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Enter Rate",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            // For Button
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.red)),
                height: 50,
                color: myColor,
                child: const Text(
                  'Calcuate',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: () {
                 setState(() {
                    result = (double.parse(p) *double.parse(t)*double.parse(r) /100).toString();
                 });
                }),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                "The simple interest is $result.",
                style: const TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(height: 190),
             const Center(
              child: Text(
                "Developed By: Bishworaj Poudel",
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xFFE21717);
