import 'package:flutter/material.dart';

Widget assetsHeroImageWidget({
  required String assetImage,
  String? imageId,
  double? height,
  double? width,
}) {
  return Hero(
    tag: "asset-image-${imageId}",
    child: Image(
      image: AssetImage(assetImage),
      height: height ?? 0.0,
      width: width ?? 0.0,
    ),
  );
}

customBackButtonOnly(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
    child: IconButton(
      icon: BackButtonIcon(),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );
}
