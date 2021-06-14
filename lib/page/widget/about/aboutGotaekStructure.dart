import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seocheongotaek_web/component/aboutmenu.dart';

class AboutGotaekStructure extends StatelessWidget {
  const AboutGotaekStructure({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final AboutMenu widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: widget.screenwidth * 0.028),
        width: widget.screenwidth * 0.67,
        child: Column(children: [
          SizedBox(height: 40),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/invalid-name@3x.jpg',
                width: widget.screenwidth * 0.494,
                height: widget.screenwidth * 0.494 * 0.428,
              ),
              SvgPicture.asset(
                'assets/images/content_link_edge.svg',
                width: widget.screenwidth * 0.494,
                height: widget.screenwidth * 0.494 * 0.428,
              ),
            ],
          ),
          Text("▲ 서천 이하복 고택 평면도"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Column(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/invalid-name@3x.jpg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                      SvgPicture.asset(
                        'assets/images/content_link_edge.svg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                    ],
                  ),
                  Text("▲ 고택 전경"),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Column(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/invalid-name@3x.jpg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                      SvgPicture.asset(
                        'assets/images/content_link_edge.svg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                    ],
                  ),
                  Text("▲ 고택 전경"),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Column(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/invalid-name@3x.jpg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                      SvgPicture.asset(
                        'assets/images/content_link_edge.svg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                    ],
                  ),
                  Text("▲ 고택 전경"),
                ]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Column(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/invalid-name@3x.jpg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                      SvgPicture.asset(
                        'assets/images/content_link_edge.svg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                    ],
                  ),
                  Text("▲ 고택 전경"),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Column(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/invalid-name@3x.jpg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                      SvgPicture.asset(
                        'assets/images/content_link_edge.svg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                    ],
                  ),
                  Text("▲ 고택 전경"),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Column(children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/invalid-name@3x.jpg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                      SvgPicture.asset(
                        'assets/images/content_link_edge.svg',
                        width: widget.screenwidth * 0.205,
                        height: widget.screenwidth * 0.205 * 0.66,
                      ),
                    ],
                  ),
                  Text("▲ 고택 전경"),
                ]),
              ),
            ],
          )
        ]));
  }
}
