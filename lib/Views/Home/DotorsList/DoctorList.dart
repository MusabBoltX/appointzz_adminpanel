// import 'package:flutter/material.dart';
// import 'HelperCard/DoctorCard.dart';
//
// class DoctorsList extends StatefulWidget {
//   final String category;
//
//   const DoctorsList({
//     Key? key,
//     required this.category,
//   }) : super(key: key);
//
//   @override
//   _DoctorsListState createState() => _DoctorsListState();
// }
//
// class _DoctorsListState extends State<DoctorsList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(231, 232, 225, 1),
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 8,
//         leading: IconButton(
//             icon: Icon(
//               Icons.navigate_before_rounded,
//               size: 35,
//             ),
//             onPressed: () {
//               Navigator.of(context).pop();
//             }),
//         backgroundColor: Color.fromRGBO(7, 78, 99, 0.7),
//         title: Image.asset(
//           'assests/logo.png',
//           color: Color.fromRGBO(231, 232, 225, 1),
//           // color: Colors.black,
//           scale: 4.3,
//         ),
//
//         // -- Search Bar -- //
//         bottom: PreferredSize(
//           preferredSize: Size(80, 80),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Container(
//                   margin: EdgeInsets.only(bottom: 10, top: 10),
//                   width: MediaQuery.of(context).size.width * 1,
//                   padding:
//                       EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: TextFormField(
//                     textAlign: TextAlign.left,
//                     decoration: InputDecoration(
//                       hintText: 'Search',
//                       focusColor: Colors.transparent,
//                       disabledBorder:
//                           OutlineInputBorder(borderSide: BorderSide.none),
//                       focusedBorder:
//                           OutlineInputBorder(borderSide: BorderSide.none),
//                       fillColor: Color.fromRGBO(231, 232, 225, 1),
//                       filled: true,
//                       border: OutlineInputBorder(borderSide: BorderSide.none),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//                 height: MediaQuery.of(context).size.height * 0.77,
//                 // padding: EdgeInsets.only(left: 20, right: 20),
//                 child: ListView.builder(
//                     itemCount: 5,
//                     itemBuilder: (BuildContext context, int index) {
//                       return DoctorCard(
//                         title: 'Dr Stuart',
//                         descriptions: 'MBBS',
//                         img: 'asset/Images/doctor.png',
//                       );
//                     })),
//             SizedBox(
//               height: 20,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:admin_panel_appointzz/Services/ColorPicker.dart';
import 'package:flutter/material.dart';
import 'HelperCard/DoctorCard.dart';

class DoctorsList extends StatefulWidget {
  final String category;

  const DoctorsList({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  _DoctorsListState createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(231, 232, 225, 1),
      appBar: AppBar(
        centerTitle: true,
        elevation: 8,
        leading: IconButton(
            icon: const Icon(
              Icons.navigate_before_rounded,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: const Color.fromRGBO(7, 78, 99, 0.7),
        title: Text(
          widget.category,
          style: TextStyle(color: cleanWhite),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\nCurrently Available Doctor: ',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Dr. Stuart",
                    style: TextStyle(
                      color: cleanDarkBlueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Current Token No: ',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        "003",
                        style: TextStyle(
                          color: cleanDarkBlueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return const DoctorCard(
                    title: 'Dr Stuart',
                    descriptions: 'MBBS',
                    img: 'asset/Images/doctor.png',
                  );
                }),
          ),
        ],
      ),
    );
  }
}
