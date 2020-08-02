library flutter_carousel;

import 'dart:async';

import 'package:flutter/material.dart';

class BeautyCarousel extends StatefulWidget {
  final double height;
  final EdgeInsets padding;
  final Duration duration;
  final bool isLooping;
  final bool isScrollable;
  final Color backgroundColor;
  final Color indicatorActiveColor;
  final Color indicatorInactiveColor;
  final BoxBorder indicatorBorder;
  final BoxShape indicatorShape;
  final Cubic slideTransitionCurve;
  final EdgeInsets indicatorPadding;
  final bool showIndicator;
  final Alignment indicatorAlignment;
  final List<Widget> slides;

  const BeautyCarousel({
    @required this.height,
    @required this.slides,
    this.isLooping = true,
    this.backgroundColor = Colors.transparent,
    this.padding = const EdgeInsets.all(0),
    this.duration = const Duration(seconds: 3),
    this.isScrollable = true,
    this.showIndicator = true,
    this.indicatorAlignment = Alignment.bottomLeft,
    this.indicatorActiveColor = const Color(0xfff2a365),
    this.indicatorInactiveColor = const Color(0x1cececec),
    this.indicatorShape = BoxShape.circle,
    this.slideTransitionCurve,
    this.indicatorPadding,
    this.indicatorBorder,
  });

  @override
  _BeautyCarouselState createState() => _BeautyCarouselState();
}

class _BeautyCarouselState extends State<BeautyCarousel> {
  PageController pageController;
  var active = 0;
  Timer t;

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
    int i = 0;
    t = Timer.periodic(widget.duration, (Timer t) {
      if (i < widget.slides.length) {
        setState(() {
          pageController.animateToPage(i,
              duration: Duration(milliseconds: 250),
              curve: widget.slideTransitionCurve);
          i++;
        });
      } else if (widget.isLooping) {
        setState(() {
          i = 0;
        });
      }
    });
  }

  @override
  void dispose() {
    t?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: widget.padding,
            color: widget.backgroundColor,
            child: PageView(
              pageSnapping: true,
              onPageChanged: (activ) {
                setState(() {
                  active = activ;
                });
              },
              physics: widget.isScrollable
                  ? AlwaysScrollableScrollPhysics()
                  : NeverScrollableScrollPhysics(),
              controller: pageController,
              children: widget.slides,
            ),
          ),
          widget.showIndicator
              ? Align(
                  alignment: widget.indicatorAlignment,
                  child: Container(height: 35, child: buildIndicators()),
                )
              : Container()
        ],
      ),
    );
  }

  Widget buildIndicators() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: widget.indicatorPadding,
        itemCount: widget.slides.length,
        itemBuilder: (context, index) {
          return Container(
            height: 15,
            width: 15,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                border: widget.indicatorBorder,
                shape: widget.indicatorShape,
                color: (index == active)
                    ? widget.indicatorActiveColor
                    : widget.indicatorInactiveColor),
          );
        });
  }
}
