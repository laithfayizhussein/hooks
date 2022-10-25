import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// useMemoized for cashing data
// useCallback  for cashing data
//The difference is that useCallback returns its function when the dependencies change
// while useMemo calls its function and returns the result.

class UseMemo extends HookWidget {
  const UseMemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _count = useState(0);
    _count
        .value++; // to prove that without cashing the data will reduce the data many time

    Future<String> fetchData() async {
      await Future.delayed(Duration(seconds: 1));
      return 'Hello worlds${_count.value}';
    }

    final future = useMemoized(
        fetchData,
        ([
          _count.value,
        ]));
    final snapshot = useFuture(future);
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'hooks',
        )),
        body: Column(
          children: [
            Center(
                child: snapshot.hasData
                    ? Text('${snapshot.data}')
                    : CircularProgressIndicator()),
          ],
        ));
  }
}
