import 'package:flutter/material.dart';
import 'package:untitled/ui/styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _buttons = [
    const CustomElevatedButton(key: ValueKey('red'), color: Colors.red),
    const CustomElevatedButton(key: ValueKey('yellow'), color: Colors.yellow),
    const CustomElevatedButton(key: ValueKey('green'), color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: _buttons,
                ),
              ),
            ),
            ElevatedButton(
              style: getButtonThemeWithColor(Colors.red),
              child: const Text('Remove Top'),
              onPressed: _removeTop,
            ),
          ],
        ),
      ),
    );
  }

  void _removeTop() {
    setState(() {
      if (_buttons.isNotEmpty) {
        _buttons.removeAt(0);
      }
    });
  }
}

class CustomElevatedButton extends StatefulWidget {
  final Color color;

  const CustomElevatedButton({Key? key, required this.color}) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  int? index;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getButtonThemeWithColor(widget.color),
      child: Text(index?.toString() ?? 'Empty'),
      onPressed: _increaseIndex,
    );
  }

  void _increaseIndex() {
    setState(() {
      if (index != null) {
        index = index! + 1;
      } else {
        index = 1;
      }
    });
  }
}
