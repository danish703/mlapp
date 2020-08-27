import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CodeImage extends StatelessWidget {
  final String url;

  CodeImage({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(
            5.0,
          )),
      child: CachedNetworkImage(
        progressIndicatorBuilder: (context, url, progress) => Center(
          child: CircularProgressIndicator(
            value: progress.progress,
          ),
        ),
        imageUrl: url,
      ),
    );
  }
}
