import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SHImageView extends StatefulWidget {
  final imageURL;
  final height;
  final width;
  SHImageView({@required this.imageURL, this.height = 50.0, this.width = 50.0});

  @override
  _SHImageViewState createState() => _SHImageViewState();
}

class _SHImageViewState extends State<SHImageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        height: widget.height,
        child: CachedNetworkImage(
            imageUrl: widget.imageURL,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error)));
  }
}
