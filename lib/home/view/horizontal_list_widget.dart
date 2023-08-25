import 'dart:async';

import 'package:dynamic_widget_assignment/home/bloc/dynamic_widget_bloc.dart';
import 'package:dynamic_widget_assignment/home/network/model/dynamic_horizontal_list_data_model.dart';
import 'package:dynamic_widget_assignment/home/network/model/horizontal_list_item_model.dart';
import 'package:dynamic_widget_assignment/home/view/banner_item_widget.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/app_text_widget.dart';
import 'package:dynamic_widget_assignment/utils/constants.dart';
import 'package:dynamic_widget_assignment/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HorizontalListWidget extends StatefulWidget {
  final DynamicHorizontalListData horizontalListData;

  String? dummyUrl =
      'https://www.shutterstock.com/shutterstock/photos/2039669051/display_1500/stock-photo-big-plate-with-small-amount-of-salad-in-the-centre-concept-of-dieting-and-calorie-restrictions-2039669051.jpg';

  HorizontalListWidget({
    required this.horizontalListData,
  });

  @override
  _HorizontalListWidgetState createState() => _HorizontalListWidgetState();
}

class _HorizontalListWidgetState extends State<HorizontalListWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.horizontalListData.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.horizontalListData.items.length,
            itemBuilder: (context, index) {
              final item = widget.horizontalListData.items[index];
              return (() {
                if (item.shape.toUpperCase() == CIRCLE) {
                  return Container(
                    child: Column(
                      children: [
                        15.heightBox,
                        Card(
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage('${widget.dummyUrl}'),
                          ),
                          elevation: 18.0,
                          shape: const CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                        ),
                        17.heightBox,
                        AppTextWidget(text: "${item.text}")
                      ],
                    ),
                  );
                }
                return RectangleShapeItemWidget(horizontalListItem: item);
              }());
            },
          ),
        ),
      ],
    );
  }
}

class RectangleShapeItemWidget extends StatelessWidget {
  final HorizontalListItem horizontalListItem;

  String? dummyUrl =
      'https://media.istockphoto.com/id/1285125907/photo/square-shaped-snack-for-diwali.jpg?s=1024x1024&w=is&k=20&c=QJx-jWjAOLNu0p0PPfmt4uXLeBL21gJw7eZTYRC88JA=';

  RectangleShapeItemWidget({
    required this.horizontalListItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColorLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: 100,
          height: 130,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
          child: Column(
            children: [
              10.heightBox,
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  dummyUrl!,
                ),
              ),
              Spacer(),
              AppTextWidget(text: "{item.text}")
            ],
          ),
        ));
  }
}
