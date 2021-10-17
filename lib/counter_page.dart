import 'package:flutter/material.dart';

import 'count.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Communication'),
      ),
      body: Center(
        child: Count(
          count: count,
          onCountSelected: () => print('clicou'),
          oncountChange: (int val, int pow) => setState(() {
            count += val;
            if (count % 2 == 0) {
              count *= count;
            }
          }),
        ),
      ),
    );
  }
}
