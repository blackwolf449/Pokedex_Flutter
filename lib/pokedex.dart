import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PokedexState();
  }
}

class PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    String type = "";
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/image/nothing.png'),
                          Image.asset('assets/image/nothing.png')
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("$name test",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Text("$type test",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ])
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  width: 10,
                ))
          ],
        ),
      ),
    );
  }
}