import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SHLabel extends StatefulWidget {
  final String text;
  final TextStyle style;
  SHLabel({@required this.text, this.style});

  @override
  _SHLabelState createState() => _SHLabelState();
}

class _SHLabelState extends State<SHLabel> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text, style: widget.style);
  }
}