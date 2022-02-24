import 'package:admin_panel_appointzz/Views/Home/Specialitites/category_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Helpers/TokenCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    _readDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 8,
          leading: Container(),
          backgroundColor: const Color.fromRGBO(7, 78, 99, 0.8),
          title: Image.asset(
            'assests/logo.png',
            color: const Color.fromRGBO(231, 232, 225, 1),
            // color: Colors.black,
            scale: 4.3,
          )),
      body: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Token Cards //
              TokenCard(
                token: '067',
                text: 'Current Token \nNumber',
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => const CategoryScreen()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.92,
          height: 75,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2.0, 2.0), //(x,y)
                blurRadius: 1.0,
              ),
            ],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: const Color.fromRGBO(7, 78, 99, 0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '    Book New Appointment',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(231, 232, 225, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                Icon(
                  Icons.navigate_next_rounded,
                  color: Color.fromRGBO(231, 232, 225, 1),
                  size: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final dbRef = FirebaseDatabase.instance.ref();
  String displayText = 'loading...';

  void _readDatabase() async {
    dbRef.child('Appointzz').child('Doctors').child('001/start_time').onValue.listen((event) {
      final String des = event.snapshot.value.toString();
      debugPrint(des);

      setState(() {
        displayText = 'test data $des';
      });
    });
  }

}
