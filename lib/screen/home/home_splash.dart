import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = _counter == 0 ? 0 : --_counter;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Home screen",
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 200,
                child: IconButton(
                  onPressed: _reset, 
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 30
                  )
                )
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    '$_counter', 
                    style: const TextStyle(
                      fontSize: 150, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis
                  )
                )
              ),
              Container(
                height: 200,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: _incrementCounter, 
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                        size: 60,
                      )
                    ),
                    const SizedBox(width: 50),
                    IconButton(
                      onPressed: _decrementCounter, 
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.white,
                        size: 60,
                      )
                    )
                  ],
                )
              )
            ],
          )
        )
      )
    );
  }
}