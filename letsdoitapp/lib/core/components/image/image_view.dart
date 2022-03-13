import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ImageView extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BoxFit boxFit;
  final bool caching;
  const ImageView(this.imageUrl,
      {Key? key, required this.width, required this.height, required this.boxFit, this.caching = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: kIsWeb || !caching
          ? Image.network(
              imageUrl,
              width: width,
              height: height,
              fit: boxFit,
            )
          : CachedNetworkImage(
              imageUrl: imageUrl,
              width: width,
              height: height,
              fit: boxFit,
              errorWidget: (c, error, data) => Icon(Icons.error),
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }
}
