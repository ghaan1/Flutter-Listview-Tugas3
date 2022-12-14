import 'package:flutter/material.dart';
import 'package:tugas3/main2.dart';

void main() {
  runApp(MyApp());
}
//PARAMATER
class MyApp extends StatelessWidget {
  final text = [
    'Test 1',
    'Test 2',
    'Test 3',
    'Test 4',
    'Test 5',
  ];

  final gambar = [
    '1.jpeg',
    '1.jpeg',
    '1.jpeg',
    '1.jpeg',
    '1.jpeg',
  ];

  final tanggal = [
    'Blitar , Agt 20 2021',
    'Blitar , Agt 21 2021',
    'Blitar , Agt 22 2021',
    'Blitar , Agt 23 2021',
    'Blitar , Agt 24 2021',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Berita',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: 
      DefaultTabController(
        length: 2,
        child: Scaffold(
        appBar: AppBar(   
          title: const Text('MyApp'),
          bottom: const TabBar(
            tabs: [
              Text('BERITA'),
              Text('PERTANDINGAN'),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[ 
            Column(
            children: [
              BeritaBesar(),
              Expanded(
                child: ListView.builder(
                   itemCount: text.length,
                      itemBuilder: (context, index) {
                        return BeritaKecil(index);
                      },              
                ),
              )
            ]
            ),
            
          
          const Center(
            child: MyApp2(),
          )
          ]
          )
        )
        )
    );
  }

  BeritaBesar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple)
      ),
      child: 
      Column(
        children: <Widget>[
          Container(         
            height: 150,          
            decoration: const BoxDecoration(               
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                   fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/aguero2.jpeg'),  
                ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const Text("Costa Mendekat ke Palmeiras",
            style: TextStyle(
              fontSize:20,
                  color:Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ), 
          Container(
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.centerLeft,
          color: Colors.purpleAccent,
          child: const Text("Transfer"),
          ),
        ],
      ),
    );
  }


BeritaKecil(int index){
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey)
      ),
      child: 
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 100, 
                  decoration: BoxDecoration(  
                    border: Border.all(color: Colors.grey),                                  
                  ),
                  child : Image.asset(
                          'assets/images/' + gambar[index],
                          alignment: Alignment.center,
                        fit: BoxFit.fitHeight, 
                          ),  
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                padding: const EdgeInsets.all(5.0),
                width: 200,
                height: 100, 
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                  child: Text(text[index],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12
                    ),),
                ),
              ),
            ], 
          ),
              Container(
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
                child: Text(tanggal[index]),
              ),
        ],
      ),
    );
}
}
