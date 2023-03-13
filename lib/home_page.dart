import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  String title;

  MyHomePage(this.title, {Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RxInt counter = 0.obs;

  void _incrementCounter() {
    counter.value++;
  }

  @override
  void initState() {
    protectData();
    super.initState();
  }

  @override
  void dispose() {
    disposeData();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
