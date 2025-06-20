import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

// These examples are taken from https://docs.flutter.dev/ui/layout/constraints

const red = Colors.red;
const green = Colors.green;
const blue = Colors.blue;
const big = TextStyle(fontSize: 30);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
            // to run the different examples, exchange the example number in next line.
            // Remark: when you run them on Chrome and there are exceptions like in example16,
            //         you see the exception in Terminal and there under DebugConsole.
            getExample33());
  }

  Widget getExample01() {
    return Container(color: red);
  }

  Widget getExample02() {
    return Container(width: 100, height: 100, color: red);
  }

  Widget getExample03() {
    return Center(child: Container(width: 100, height: 100, color: red));
  }

  Widget getExample04() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(width: 100, height: 100, color: red),
    );
  }

  Widget getExample05() {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: red,
      ),
    );
  }

  Widget getExample06() {
    return Center(child: Container(color: red));
  }

  Widget getExample07() {
    return Center(
      child: Container(
        color: red,
        child: Container(color: green, width: 30, height: 30),
      ),
    );
  }

  Widget getExample08() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: red,
        child: Container(color: green, width: 30, height: 30),
      ),
    );
  }

  Widget getExample09() {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(color: red, width: 10, height: 10),
    );
  }

  Widget getExample10() {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: red, width: 10, height: 10),
      ),
    );
  }

  Widget getExample11() {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: red, width: 1000, height: 1000),
      ),
    );
  }

  Widget getExample12() {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: red, width: 100, height: 100),
      ),
    );
  }

  Widget getExample13() {
    return UnconstrainedBox(
      child: Container(color: red, width: 20, height: 50),
    );
  }

  Widget getExample14() {
    return UnconstrainedBox(
      child: Container(color: red, width: 4000, height: 50),
    );
  }

  Widget getExample15() {
    return OverflowBox(
      minWidth: 0,
      minHeight: 0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Container(color: red, width: 4000, height: 50),
    );
  }

  Widget getExample16() {
    return UnconstrainedBox(
      child: Container(color: Colors.red, width: double.infinity, height: 100),
    );
  }

  Widget getExample17() {
    return UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
        ),
      ),
    );
  }

  Widget getExample18() {
    return const FittedBox(child: Text('Some Example Text.'));
  }

  Widget getExample19() {
    return const Center(child: FittedBox(child: Text('Some Example Text.')));
  }

  Widget getExample20() {
    return const Center(
      child: FittedBox(
        child: Text(
          'This is some very very very large text that is too big to fit a regular screen in a single line.',
        ),
      ),
    );
  }

  Widget getExample21() {
    return const Center(
      child: Text(
        'This is some very very very large text that is too big to fit a regular screen in a single line.',
      ),
    );
  }

  Widget getExample22() {
    return FittedBox(
      child: Container(height: 20, width: double.infinity, color: Colors.red),
    );
  }

  Widget getExample23() {
    return Row(
      children: [
        Container(color: red, child: const Text('Hello!', style: big)),
        Container(color: green, child: const Text('Goodbye!', style: big)),
      ],
    );
  }

  Widget getExample24() {
    return Row(
      children: [
        Container(
          color: red,
          child: const Text(
            'This is a very long text that '
            'won\'t fit the line.',
            style: big,
          ),
        ),
        Container(color: green, child: const Text('Goodbye!', style: big)),
      ],
    );
  }

  Widget getExample25() {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Container(
              color: red,
              child: const Text(
                'This is a very long text that won\'t fit the line.',
                style: big,
              ),
            ),
          ),
        ),
        Container(color: green, child: const Text('Goodbye!', style: big)),
      ],
    );
  }

  Widget getExample26() {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: red,
            child: const Text(
              'This is a very long text that won\'t fit the line.',
              style: big,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: green,
            child: const Text('Goodbye!', style: big),
          ),
        ),
      ],
    );
  }

  Widget getExample27() {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: red,
            child: const Text(
              'This is a very long text that won\'t fit the line.',
              style: big,
            ),
          ),
        ),
        Flexible(
          child: Container(
            color: green,
            child: const Text('Goodbye!', style: big),
          ),
        ),
      ],
    );
  }

  Widget getExample28() {
    return Scaffold(
      body: Container(
        color: blue,
        child: const Column(children: [Text('Hello!'), Text('Goodbye!')]),
      ),
    );
  }

  Widget getExample29() {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: blue,
          child: const Column(children: [Text('Hello!'), Text('Goodbye!')]),
        ),
      ),
    );
  }

  // I added this example 30 to simulate what we have in flying_balls.
  // Take care: we you delete the Column widget in this example, you get an exception "Incorrect use of ParentDataWidget."
  Widget getExample30() {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: blue,
              //child: const Column(children: [Text('Hello!'), Text('Goodbye!')]),
            ),
          ),
        ],
      ),
    );
  }

  // This is the example, discussed in the video at the end of the article https://docs.flutter.dev/ui/layout/constraints
  // This example produces a "Vertical viewport was given unbounded height." exception.
  // BTW: you can directly reach this video via https://www.youtube.com/watch?v=jckqXR5CrPI.

  Widget getExample31() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("produce unbounded height exception"),
          ListView(children: const [
            Text("Listview item 1"),
            Text("Listview item 2")
          ])
        ],
      ),
    );
  }

  // This is the first possibility to solve the "unbounded height" exception given at the end of the video (video minute 4:00)
  // "make the ListView as big as possible still giving space to the other children of the Column"
  // -> surround ListView with Expanded:
  Widget getExample32() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("avoid unbounded height exception with Expanded"),
          Expanded(
            child: ListView(children: const [
              Text("Listview item 1"),
              Text("Listview item 2")
            ]),
          )
        ],
      ),
    );
  }

  // This is the second possibility to solve the "unbounded height" exception (see video minute 4:23):
  // "if you want the ListView to have an exact size"
  // -> surround ListView with SizedBox:
  Widget getExample33() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("avoid unbounded height exception with SizedBox"),
          SizedBox(
            height: 42,
            child: ListView(children: const [
              Text("Listview item 1"),
              Text("Listview item 2")
            ]),
          )
        ],
      ),
    );
  }
}
