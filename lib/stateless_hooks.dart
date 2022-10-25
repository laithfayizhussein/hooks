import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// hooks are a way to reuse logic
//we can have at most 1 super-class in Dart //
//hooks can only be used in the build function of your widgets
//hooks are retrieved using their index

// many methode on hooks
//useState replaced with setState
// useEffect replace with initState and dispose

class CounterByPress extends HookWidget {
  const CounterByPress({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _counter = useState(0); //replace with setSate
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'hooks',
        )),
        body: Column(
          children: [
            Text('${_counter.value}'),
            IconButton(
                onPressed: () {
                  _counter.value++;
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  _counter.value--;
                },
                icon: Icon(Icons.minimize)),
          ],
        ));
  }
}
