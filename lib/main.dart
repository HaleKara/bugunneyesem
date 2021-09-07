import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BenimUygulamam());
}



class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Text(
              'BUGÜN NE YESEK?',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: YemekBody(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class YemekBody extends StatefulWidget {
  @override
  State<YemekBody> createState() => _YemekBodyState();
}

class _YemekBodyState extends State<YemekBody> {
  int corba = 1;
  int anaYemek = 1;
  int atis = 1;

  List<String> corbaAdlari=['Domates Çorbası','Ezogelin Çorbası','Düğün Çorbası','Tarhana Çorbası'];
  List<String> anayemekAdlari=['Adana','Pizza','Etliekmek','Pide','Köfte'];
  List<String> atisAdlari=['Çiğköfte','Sarma','Dolma','Makarna'];
  
  void yemekleriYenile() {
    setState(() {
      corba = Random().nextInt(4) + 1;
      anaYemek = Random().nextInt(5) + 1;
      atis = Random().nextInt(4) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                highlightColor: Colors.white, //tıklayınca tutunca kırmızı
                color: Colors.white, //normal rengi sarı
                splashColor: Colors.white,
                child: Image.asset('assets/corba_$corba.jpg'),
                onPressed: () {yemekleriYenile();
                },
              ),
            ),
          ),
          Text(corbaAdlari[corba-1],style:TextStyle(fontSize: 20),
          ),
           Divider(height:5,color: Colors.black,indent:100,endIndent: 100, ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                highlightColor: Colors.white, //tıklayınca tutunca kırmızı
                color: Colors.white, //normal rengi sarı
                splashColor: Colors.white,
                child: Image.asset('assets/anayemek_$anaYemek.jpg'),
                onPressed: () {yemekleriYenile();
                },
              ),
            ),
          ),
          Text(anayemekAdlari[anaYemek-1],style:TextStyle(fontSize: 20),
          ),
          Container(
              width:200,child: Divider(height:5,color: Colors.black,)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                highlightColor: Colors.white, //tıklayınca tutunca kırmızı
                color: Colors.white, //normal rengi sarı
                splashColor: Colors.white,
                child: Image.asset('assets/atistirmalik_$atis.jpg'),
                onPressed: () {yemekleriYenile();

                },
              ),
            ),
          ),
          Text(atisAdlari[atis-1],style:TextStyle(fontSize: 20),
          ),
          Container(
              width:200,child: Divider(height:5,color: Colors.black,)),
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
