import 'package:flutter/material.dart';
import 'my_opject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  MyOpject myOpject = MyOpject(0);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              autofocus: true,
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "Nhập vào một số :",
                labelStyle: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Giá trị hiện tại : ${myOpject.value}',
              style: const TextStyle(fontSize: 32),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    myOpject.increase();
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Cộng'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    myOpject.decrease();
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('Trừ'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    myOpject.multiply(int.parse(controller.text));
                    setState(() {});
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('Nhân'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    myOpject.divide(int.parse(controller.text));
                    setState(() {});
                  },
                  icon: const Icon(Icons.splitscreen),
                  label: const Text('Chia'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    myOpject.square();
                    setState(() {});
                  },
                  icon: const Icon(Icons.square),
                  label: const Text('Lũy thừa bậc 2'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    myOpject.value= myOpject.power(int.parse(controller.text));
                    setState(() {});
                  },
                  icon: const Icon(Icons.power),
                  label: const Text('Lũy thừa bậc n'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
