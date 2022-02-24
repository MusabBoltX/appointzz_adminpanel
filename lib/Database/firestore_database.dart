import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class FireStoreDatabase {
  late FirebaseFirestore firestore;

  initialize() {
    firestore = FirebaseFirestore.instance;
  }

  Future<List> readSpecialty() async {
    QuerySnapshot querySnapshot;
    List docs = [];

    try {
      querySnapshot = await firestore.collection("Specialty").get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var specialities in querySnapshot.docs.toList()) {
          Map map = {"name": specialities["name"]};
          docs.add(map);
        }
        return docs;
      }
    } catch (e) {
      debugPrint("$e");
    }

    return docs;
  }
}
