import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

BoxDecoration drawerDecoration({required double alpha}) {
  return BoxDecoration(
    image: DecorationImage(
      image: CachedNetworkImageProvider(
        'https://i.pinimg.com/736x/8d/bc/d2/8dbcd26949d845772779b7799df445ee.jpg',
      ),
      colorFilter: ColorFilter.mode(
          Colors.black.withValues(alpha: alpha), BlendMode.colorBurn),
      fit: BoxFit.cover,
    ),
  );
}
