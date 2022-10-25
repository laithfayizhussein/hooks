import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SecondsCounter extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _count = useState(0); //replace with setSate
    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 1), (timer) {
        _count.value = timer.tick;
      });
      return timer.cancel;
    }, []);
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'hooks',
        )),
        body: Column(
          children: [
            Center(child: Text('${_count.value}')),
          ],
        ));
  }
}
