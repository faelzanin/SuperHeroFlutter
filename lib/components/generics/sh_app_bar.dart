import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_hero/components/generics/sh_label.dart';

class SHAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Widget leading;
  final List<Widget> actions;
  
  static double heightAppBar = 48.0;

  SHAppBar({this.title, this.leading, this.actions});

  @override
  _SHAppBarState createState() => _SHAppBarState();

  @override
  Size get preferredSize {
    return Size.fromHeight(heightAppBar);
  }
}

class _SHAppBarState extends State<SHAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: SHLabel(
              text: widget.title ?? "",
              style: TextStyle(color: Colors.black),
            ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      leading: widget.leading != null
          ? widget.leading
          : IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
      actions: widget.actions != null ? widget.actions : <Widget>[],
    );
  }
}
