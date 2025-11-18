import 'package:flutter/material.dart';

void main() => runApp(const SelectableButtonsApp());

class SelectableButtonsApp extends StatelessWidget {
  const SelectableButtonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom buttons')),
        body: const _ButtonsPanel(),
      ),
    );
  }
}

class _ButtonsPanel extends StatelessWidget {
  const _ButtonsPanel();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SelectableButton(),
          SizedBox(height: 16),
          SelectableButton(),
          SizedBox(height: 16),
          SelectableButton(),
          SizedBox(height: 16),
          SelectableButton(),
        ],
      ),
    );
  }
}

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool _isSelected = false;

  String get _label => _isSelected ? 'Selected' : 'Not Selected';

  Color get _textColor => _isSelected ? Colors.white : Colors.black;

  Color get _backgroundColor =>
      _isSelected ? Colors.blue.shade500 : Colors.blue.shade50;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: _toggleSelection,
        style: ElevatedButton.styleFrom(
          backgroundColor: _backgroundColor,
          foregroundColor: _textColor,
          textStyle: const TextStyle(fontSize: 20),
        ),
        child: Center(child: Text(_label)),
      ),
    );
  }
}
