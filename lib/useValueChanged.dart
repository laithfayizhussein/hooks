import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// useValueChanged

class useeValueChanged extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final count = useState(0);
    final updateCount = useState(0);
    useValueChanged(count.value, (oldValue, oldResult) {
      print('$oldValue -- $oldResult');
      return updateCount.value += 2;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('useValueChanged'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${updateCount.value}'),
            IconButton(
                onPressed: () {
                  count.value++;
                },
                icon: Icon(Icons.plus_one))
          ],
        ),
      ),
    );
  }
}
