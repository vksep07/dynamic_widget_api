import 'dart:async';

import 'package:dynamic_widget_assignment/home/bloc/dynamic_widget_bloc.dart';
import 'package:dynamic_widget_assignment/home/network/model/banner_data_model.dart';
import 'package:dynamic_widget_assignment/home/view/banner_item_widget.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/app_text_widget.dart';
import 'package:dynamic_widget_assignment/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerWidget extends StatefulWidget {
  final List<Map<String, dynamic>> properties;

  BannerWidget({
    required this.properties,
  });

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  late PageController _bannerController;
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bannerController = PageController(
      viewportFraction: 0.8,
      initialPage: 0,
    );
    _timer = Timer.periodic(Duration(seconds: 2), (_) {
      _currentPage = (_currentPage + 1) % widget.properties.length;
      _bannerController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _bannerController,
            itemCount: widget.properties.length,
            onPageChanged: (index) {
              _currentPage = index;
            },
            itemBuilder: (context, index) {
              final bannerData = BannerData.fromJson(widget.properties[index]);
              return Center(
                child: BannerItemWidget(
                  image: bannerData.image,
                  headerText: bannerData.headerText,
                  footerText: bannerData.footerText,
                  footerIcon: bannerData.footerIcon,
                  padding: bannerData.padding,
                  margin: bannerData.margin,
                  borderRadius: bannerData.borderRadius,
                ),
              );
            },
          ),
        ),
        10.heightBox,
        SmoothPageIndicator(
            controller: _bannerController,
            // PageController
            count: widget.properties.length,
            effect: ScrollingDotsEffect(
              activeDotColor: Theme.of(context).primaryColor,
              dotColor: Theme.of(context).primaryColorDark,
            ),
            // your preferred effect
            onDotClicked: (index) {
              /*WILL WRITE CODE HERE*/
            })
      ],
    );
  }
}
