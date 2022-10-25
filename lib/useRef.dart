import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// useRef its observe the data without render it on the ui;
// the same with useState but without render on screen

class TextController extends HookWidget {
  const TextController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: '');
    // final typing = useState('');
    final typing = useRef('');
    useEffect(() {
      textController.addListener(() {
        typing.value = textController.text;
        print({'typing', typing.value});
      });
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Controller'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: textController,
          ),
          Text("${typing.value}")
        ],
      ),
    );
  }
}
