import 'package:dynamic_widget_assignment/utils/common_widgets/app_text_widget.dart';
import 'package:flutter/material.dart';

class BannerItemWidget extends StatelessWidget {
  final String image;
  final String headerText;
  final String footerText;
  final bool footerIcon;
  final List<double> padding;
  final List<double> margin;
  final double borderRadius;

  BannerItemWidget({
    required this.image,
    required this.headerText,
    required this.footerText,
    required this.footerIcon,
    required this.padding,
    required this.borderRadius,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        margin[0],
        margin[1],
        margin[2],
        margin[3],
      ),
       padding: EdgeInsets.fromLTRB(
            padding[0],
            padding[1],
            padding[2],
            padding[3],
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.blue,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.network(
              "${image}",
              width: double.infinity,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.blue,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
                child: AppTextWidget(
                  text: headerText,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextWidget(
                    text: footerText,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  if (footerIcon)
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 15,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
