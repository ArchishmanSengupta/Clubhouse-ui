import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {
  final String url;
  final String path;
  final double width;
  final double height;
  final EdgeInsets margin;
  final double borderRadius;

  const RoundImage ({
    Key key,
    this.url,
    this.path='',
    this.width=48,
    this.height=46,
    this.margin,
    this.borderRadius=44,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius),
      image: DecorationImage(
        image:path.isNotEmpty ? AssetImage(path) : NetworkImage(url),
        fit: BoxFit.cover,
        )
      ),
      );
    
  }
}