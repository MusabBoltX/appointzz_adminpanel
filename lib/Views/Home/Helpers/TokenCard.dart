import 'package:flutter/material.dart';

class TokenCard extends StatefulWidget {
  final String? token;
  final String? text;

  const TokenCard({Key? key, this.token, this.text}) : super(key: key);

  @override
  State<TokenCard> createState() => _TokenCardState();
}

class _TokenCardState extends State<TokenCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        color: const Color.fromRGBO(7, 78, 99, 0.6),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, right: 0, left: 0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
                child: Text(
                  "#category_name",
                  style: TextStyle(
                    color: Color.fromRGBO(231, 232, 225, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 65,
                backgroundColor: const Color.fromRGBO(231, 232, 225, 1),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 8.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    color: const Color.fromRGBO(7, 78, 99, 0.8),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Center(
                      child: Text(
                    '${widget.token}',
                    textScaleFactor: 1.0,
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Color.fromRGBO(231, 232, 225, 1)),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 1),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Icon(
                            (Icons.minimize),
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Icon(
                        (Icons.restart_alt_sharp),
                        size: 40,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: const Icon(
                        (Icons.add),
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    // Container(
                    //   width: MediaQuery.of(context).size.width*0.3,
                    //   child: Text('Reser',
                    //     textScaleFactor: 1.0,
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //       color: Color.fromRGBO(231, 232, 225, 1),
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
