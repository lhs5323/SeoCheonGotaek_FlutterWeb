import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({
    Key key,
    @required this.screenwidth,
  }) : super(key: key);

  final screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: screenwidth * 0.02),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/gallery-bg@3x.jpg',
            width: screenwidth * 0.66,
            height: screenwidth * 0.667 * 0.58,
          ),
          SvgPicture.asset(
            'images/gallery_link_edge.svg',
            width: screenwidth * 0.667,
            height: screenwidth * 0.667 * 0.58,
          ),
        ],
      ),
    );
  }
}
