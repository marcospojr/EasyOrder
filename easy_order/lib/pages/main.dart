import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  // private variables

  // private methods

  // build method

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: scaffold,
    );
  }

// Widgets

// Scaffold Widget
  var scaffold = Scaffold(
    appBar: AppBar(
      title: const Text("Bar do Tião"),
      backgroundColor: Colors.red,
      leading: const OptionsButton(),
      actions: const <Widget>[OrderButton()],
    ),
    body: GridView.count(
      mainAxisSpacing: 7,
      crossAxisSpacing: 5,
      crossAxisCount: 3,
      children: List.generate(100, (index) {
        return Center(
          child: Text(
            'Item $index',
          ),
        );
      }),
    ),
  );
}

// OrderButton Widget
class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.grading_sharp,
        color: Colors.white,
      ),
      onPressed: () {
        // TODO: - implementar a ação do botão
        // do something
      },
    );
  }
}

// OptionsButton Widget
class OptionsButton extends StatelessWidget {
  const OptionsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.flatware,
        color: Colors.white,
      ),
      onPressed: () {
        // TODO: - implementar a ação do botão
        // do something
      },
    );
  }
}
