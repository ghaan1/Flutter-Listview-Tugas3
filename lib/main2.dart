import 'package:flutter/material.dart';
import 'package:tugas3/main.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page 2',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: const MyHomePage2(title: 'Pertandingan Hari ini'),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});
            final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
        ListView(
          children: const <Widget>[
            //Button(),
            Pertandingan(),
            Pertandingan(),
            Pertandingan(),
            Pertandingan(),
            Pertandingan(),
          ],
        ),
    );
  }
}


class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.5),
      margin: const EdgeInsets.all(15),
      height: 20.5,
      child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MyApp()),
                );
              },
              child: const Text('BERITA TERBARU', 
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () {
              },
              child: const Text('PERTANDINGAN HARI INI',
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ),
         ],
        ),
    );
  }
}

class Pertandingan extends StatelessWidget {
  const Pertandingan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: 
      Column(
        children: <Widget>[    
          SizedBox(
            height: 100,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/id/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png"))
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                  ),
                    child: const Text("VS", style: 
                    TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/id/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png"))
                    ),
                  ),
                ),
              ], 
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     color: Colors.blue
                  ),
                         child: const Text("Manchester City",
                        textAlign: TextAlign.center,),
                      ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       color: Colors.blue
                    ),
                    child: const Text("Manchester City",
                    textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(13.0),
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 2,
                ),
              ),
            ),
            child: const Text("Etihad Stadium - Feb 13, 2021",
              textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}

