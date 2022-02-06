import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/util/maskPainter.dart';
import 'package:seocheongotaek_web/util/responsive.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    Key key,
    @required this.screenwidth,
    @required this.imagesList,
    @required this.screenheight,
  }) : super(key: key);

  final screenwidth;
  final screenheight;
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return (Responsive.isMobile(context)) ?
        //mobile UI Home Page
    CarouselSlider(
        options: CarouselOptions(
            height: screenheight,
            viewportFraction: 1.0,
        ),
        items: imagesList.map((item) =>
            Stack(alignment: Alignment.center, children: [
              Container(
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Image.asset(item,
                      width: screenwidth,
                      height: screenheight,
                      fit: BoxFit.fitHeight),
                  SvgPicture.asset('assets/images/title_bg_link-edge.svg',
                      width: screenwidth, height: screenwidth * 0.186)
                ]),
              ),

              Stack(alignment: Alignment.center, children: [

                BlendMask(
                    opacity: 1.0,
                    blendMode: BlendMode.multiply,
                    child: SvgPicture.asset('assets/images/title_link@3x.svg',
                        width: screenwidth,
                        height: screenwidth* 1.034)),
                SvgPicture.asset('assets/images/title-text.svg', width: screenwidth,
                    height: screenwidth* 1.034)
              ])
            ]),).toList()
    ) :
    CarouselSlider(
        options: CarouselOptions(
            height: screenwidth * 0.57,
            viewportFraction: 1.0,
        ),
        items: imagesList.map((item) =>
            Stack(alignment: Alignment.centerLeft, children: [
              Container(
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Image.asset(item,
                      width: screenwidth,
                      height: screenwidth * 0.57,
                      fit: BoxFit.cover),
                  SvgPicture.asset('assets/images/title_bg_link-edge.svg',
                      width: screenwidth, height: screenwidth * 0.186)
                ]),
              ),

              Positioned(
                left: screenwidth * 0.16,
                child: Stack(alignment: Alignment.center, children: [

                  BlendMask(
                      opacity: 1.0,
                      blendMode: BlendMode.multiply,
                      child: SvgPicture.asset('assets/images/title_link@3x.svg',
                          width: screenwidth * 0.3,
                          height: screenwidth * 0.3 * 1.034)),
                  Image.asset('assets/images/title-text.png')
                ]),
              )
            ]),).toList()
    );
  }
}