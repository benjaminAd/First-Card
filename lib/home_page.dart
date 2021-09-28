import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Card"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              Container(
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/1.8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Image.asset(
                  "images/1000emote1.png",
                  width: MediaQuery.of(context).size.width / 5,
                ),

              ),
              Container(
                child: Text("ADOLPHE Benjamin"),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/9),
                child: Text("benjamin.adolphe@etu.umontpellier.fr"),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.width/4.5 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                    ),
                    Text("benjaminadolphe.fr")
                  ],
                )
              )
            ],
          ),
        ));
  }
}
