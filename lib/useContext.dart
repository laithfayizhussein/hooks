import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

// uesContext to run code that need to be inside the build out the build by
// .of(useContext()) => without need to pass the context as a parameter

class ConextWidget extends HookWidget {
  const ConextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return display();
  }
}

Text display() {
  return Text('hello there for 1m',
      style:
          DefaultTextStyle.of(useContext()).style.apply(fontSizeFactor: 2.0));
}
