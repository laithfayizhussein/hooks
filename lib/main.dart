import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import './stateless_hooks.dart';
import './seconds_counter.dart';
import './use_memoized.dart';
import './useRef.dart';
import './useContext.dart';
import './useValueChanged.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //CounterByPress
      //SecondsCounter
      //UseMemo
      //TextController
      home: useeValueChanged(),
    );
  }
}
