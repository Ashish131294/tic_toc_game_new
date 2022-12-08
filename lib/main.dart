import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: home()));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List list = ["", "", "", "", "", "", "", "", ""];
  List<bool> t = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];
  int temp = 0;
  String ans = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tic tac tic gema"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () => (t[0] == true) ? get(0) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[0]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => (t[1] == true) ? get(1) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[1]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => (t[2] == true) ? get(2) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[2]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () => (t[3] == true) ? get(3) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[3]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => (t[4] == true) ? get(4) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[4]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => (t[5] == true) ? get(5) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[5]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () => (t[6] == true) ? get(6) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[6]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => (t[7] == true) ? get(7) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[7]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () => (t[8] == true) ? get(8) : null,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.brown,
                        child: Text(
                          "${list[8]}",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ))),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                for (int i = 0; i < 9; i++) {
                  list[i] = " ";
                  t[i] = true;
                }
                ans = "";

                setState(() {});
              },
              child: Text(
                "reset",
              )),
          Container(
            width: double.infinity,
            height: 200,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            color: Colors.brown,
            child: Text(
              "${ans}",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  get(int pos) {
    if (temp % 2 == 0) {
      list[pos] = "x";
      win();
    } else {
      list[pos] = "o";
      win();
    }
    temp++;
    t[pos] = false;

    setState(() {});

    setState(() {});
  }

  win() {
    if (list[0] == "o" && list[1] == "o" && list[2] == "o" ||
        list[3] == "o" && list[4] == "o" && list[5] == "o" ||
        list[6] == "o" && list[7] == "o" && list[8] == "o" ||
        list[0] == "o" && list[3] == "o" && list[6] == "o" ||
        list[1] == "o" && list[4] == "o" && list[7] == "" ||
        list[2] == "o" && list[5] == "o" && list[8] == "o" ||
        list[0] == "o" && list[4] == "o" && list[8] == "o" ||
        list[2] == "o" && list[4] == "o" && list[6] == "o") {
      ans = "0 IS WIN";
      for (int i = 0; i < 9; i++) {
        t[i] = false;
      }
    }

    if (list[0] == "x" && list[1] == "x" && list[2] == "x" ||
        list[3] == "x" && list[4] == "x" && list[5] == "x" ||
        list[6] == "x" && list[7] == "x" && list[8] == "x" ||
        list[0] == "x" && list[3] == "x" && list[6] == "x" ||
        list[1] == "x" && list[4] == "x" && list[7] == "x" ||
        list[2] == "x" && list[5] == "x" && list[8] == "x" ||
        list[0] == "x" && list[4] == "x" && list[8] == "x" ||
        list[2] == "x" && list[4] == "x" && list[6] == "x") {
      ans = "x IS WIN";
      for (int i = 0; i < 9; i++) {
        t[i] = false;
      }
    }

    setState(() {});
  }
}
