import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Test Code'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController cXsoal1 = TextEditingController();
  TextEditingController cYsoal1 = TextEditingController();

  String result = '';
  List listresult = [];
  soal1(String x , String y){
    listresult.clear();
    for(int i=0; i<int.parse(y); i++){
      for(int k=0; k<int.parse(x); k++){
        if(i.toString().contains(k.toString()) || k < i){
          setState(() {
            result = result + 'y';
          });
        } else {
          setState(() {
            result = result + 'x';
          });
        }
      }
      setState(() {
        listresult.add(result);
        result='';
      });
    }
    print(listresult);
  }

  TextEditingController cXsoal2 = TextEditingController();
  String result2 = '';
  List listresult2=[];
  soal2(String x){
    listresult2.clear();

    for(int i=0; i<int.parse(x); i++){
      if(i == 0 || i == int.parse(x)-1){
        setState(() {
          result = 'xxxx';
          listresult2.add(result);
          result = '';
        });
      } else {
        setState(() {
          result = 'x  x';
          listresult2.add(result);
          result='';
        });
      }
      print(listresult2);
    }
  }

  TextEditingController cXsoal3 = TextEditingController();
  TextEditingController cYsoal3 = TextEditingController();

  String result3 = '';
  List listresult3 = [];
  soal3(String x , String y){
    listresult3.clear();
    int z;

    if(int.parse(x) > 1){
      z = int.parse(x) * int.parse(y);
    } else{
      z = int.parse(x) + int.parse(y);
    }

    for(int i=0; i<z; i++){
      if(i == z-z+0 || i == z-z+1 || i == z-z+z-1 || i == z-z+z-2){
        setState(() {
          result = 'xxx';
          listresult3.add(result);
          result = '';
        });
      } else {
        setState(() {
          result = 'xxxxxxxx';
          listresult3.add(result);
          result='';
        });
      }
    }
    print(listresult3);
  }

  List listproduk = [
    {'nama': 'Produk 1', 'price': 20000},
    {'nama': 'Produk 2', 'price': 20000},
    {'nama': 'Produk 3', 'price': 20000},
    {'nama': 'Produk 4', 'price': 20000},
    {'nama': 'Produk 5', 'price': 20000},
    {'nama': 'Produk 6', 'price': 20000},
    {'nama': 'Produk 7', 'price': 20000},
    {'nama': 'Produk 8', 'price': 20000},
    {'nama': 'Produk 9', 'price': 20000},
    {'nama': 'Produk 10', 'price': 20000},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         title: Text('Test Code'),
         bottom: TabBar(
           tabs: [
             Text('Soal 1'),
             Text('Soal 2'),
             Text('Soal 3'),
             Text('Soal 4'),
           ],
         ),
       ),
       backgroundColor: Colors.white,
       body: TabBarView(
         children: [
           Container(
             margin: EdgeInsets.all(20),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   TextFormField(
                     controller: cXsoal1,
                     decoration: InputDecoration(
                       hintText: 'Nilai x',
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10)
                       )
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox(height: 10,),
                   TextFormField(
                     controller: cYsoal1,
                     decoration: InputDecoration(
                       hintText: 'Nilai Y',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                       )
                     ),
                     keyboardType: TextInputType.number,
                   ),

                   SizedBox(height: 20,),
                   RaisedButton(
                     color: Colors.green,
                     child: Text('Run'),
                     onPressed: (){
                       soal1(cXsoal1.text, cYsoal1.text);
                     }
                   ),

                   SizedBox(height: 30,),
                   Container(
                     height: 200,
                     child: ListView.builder(
                       itemCount: listresult.length == 0 ? 0 : listresult.reversed.length,
                       itemBuilder: (context, index){
                         return SingleChildScrollView(
                           child: Column(
                             children: [
                               Text(listresult[listresult.length-index-1])
                             ],
                           ),
                         );
                       }
                     ),
                   )
                 ],
               ),
             ),
           ),

           Container(
             margin: EdgeInsets.all(20),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   TextFormField(
                     controller: cXsoal2,
                     decoration: InputDecoration(
                         hintText: 'Nilai x',
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10)
                         )
                     ),
                     keyboardType: TextInputType.number,
                   ),

                   SizedBox(height: 20,),
                   RaisedButton(
                       color: Colors.green,
                       child: Text('Run'),
                       onPressed: (){
                         soal2(cXsoal2.text);
                       }
                   ),

                   SizedBox(height: 30,),
                   Container(
                     height: 200,
                     child: ListView.builder(
                         itemCount: listresult2.length == 0 ? 0 : listresult2.reversed.length,
                         itemBuilder: (context, index){
                           return SingleChildScrollView(
                             child: Column(
                               children: [
                                 Text(listresult2[listresult2.length-index-1])
                               ],
                             ),
                           );
                         }
                     ),
                   )
                 ],
               ),
             ),
           ),

           Container(
             margin: EdgeInsets.all(20),
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   TextFormField(
                     controller: cXsoal3,
                     decoration: InputDecoration(
                         hintText: 'Nilai x',
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10)
                         )
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox(height: 10,),
                   TextFormField(
                     controller: cYsoal3,
                     decoration: InputDecoration(
                         hintText: 'Nilai Y',
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10)
                         )
                     ),
                     keyboardType: TextInputType.number,
                   ),

                   SizedBox(height: 20,),
                   RaisedButton(
                       color: Colors.green,
                       child: Text('Run'),
                       onPressed: (){
                         soal3(cXsoal3.text, cYsoal3.text);
                       }
                   ),

                   SizedBox(height: 30,),
                   Container(
                     height: 200,
                     child: ListView.builder(
                         itemCount: listresult3.length == 0 ? 0 : listresult3.reversed.length,
                         itemBuilder: (context, index){
                           return SingleChildScrollView(
                             child: Column(
                               children: [
                                 Text(listresult3[listresult3.length-index-1])
                               ],
                             ),
                           );
                         }
                     ),
                   )
                 ],
               ),
             ),
           ),

           Container(
             margin: EdgeInsets.all(20),
             child: GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     mainAxisSpacing: 10,
                     crossAxisSpacing: 10,
                     crossAxisCount: 2
                 ),
                 itemCount: listproduk.length,
                 itemBuilder: (context, index){
                   return Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     elevation: 4,
                     child: Container(
                       height: 200,
                       width: 200,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text('Nama Produk:' + listproduk[index]['nama']),
                           SizedBox(height: 20,),
                           Text('Harga Produk : ' + listproduk[index]['price'].toString()),
                         ],
                       ),
                     ),
                   );
                 }
             ),
           ),
         ]
       ),
     ),
   );
  }
}
