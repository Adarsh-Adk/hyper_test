import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../core/assets.dart';

class ImagesWidgets extends StatelessWidget {
  const ImagesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 400,
      initialPage: 0,
      indicatorColor: Colors.white,
      indicatorBackgroundColor: Colors.grey,
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.network(
          Assets.dummyImageURL,
          fit: BoxFit.cover,
        ),
        Image.network(
          Assets.dummyImageURL,
          fit: BoxFit.cover,
        ),
        Image.network(
          Assets.dummyImageURL,
          fit: BoxFit.cover,
        ),
        Image.network(
          Assets.dummyImageURL,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
