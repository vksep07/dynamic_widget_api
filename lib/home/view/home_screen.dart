import 'dart:async';
import 'dart:convert';

import 'package:dynamic_widget_assignment/home/bloc/dynamic_widget_bloc.dart';
import 'package:dynamic_widget_assignment/home/network/model/dynamic_widget_res_model.dart';
import 'package:dynamic_widget_assignment/home/view/dynamic_widget_renderer.dart';
import 'package:dynamic_widget_assignment/utils/common_util/utils_importer.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/app_text_widget.dart';
import 'package:dynamic_widget_assignment/utils/common_widgets/custom_theme.dart';
import 'package:dynamic_widget_assignment/utils/default_loading.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dynamicWidgetBloc.homeDynamicWidgetApi();


  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
   /* final dynamic jsonData = json.decode(dynamicWidgetBloc.jsonStr);
    dataModel=DynamicWidgetModel.fromJson(jsonData);*/
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                if (!dynamicWidgetBloc.theme!) {
                  dynamicWidgetBloc.theme = true;
                  dynamicWidgetBloc.changeTheme( MyThemeKeys.DARK);
                } else {
                  dynamicWidgetBloc.theme = false;
                  dynamicWidgetBloc.changeTheme(MyThemeKeys.LIGHT);
                }
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: (() {
                  if (!dynamicWidgetBloc.theme!) {
                    return Icon(
                      Icons.wb_sunny_outlined,
                      color: Theme.of(context).primaryColorDark,
                    );
                  }
                  return Icon(Icons.sunny);
                }()),
              ),
            ),
          ],
          backgroundColor: Theme.of(context).primaryColorLight,
          title: AppTextWidget(
            text: UtilsImporter().stringUtils.home,
            size: 18,
            color: Theme.of(context).primaryColorDark,
            fontWeight: FontWeight.bold,
          )),
      body: StreamBuilder(
        stream: dynamicWidgetBloc.loadingController,
        builder: (context, snapshot) {
        if(snapshot.hasData && !snapshot.data! && dynamicWidgetBloc.dynamicWidgetModel!=null)
          {
            return ListView.builder(
              itemCount: dynamicWidgetBloc.dynamicWidgetModel?.widgets?.length,
              itemBuilder: (context, index) {
                List<Map<String, dynamic>> convertedList = List<Map<String, dynamic>>.from(dynamicWidgetBloc.dynamicWidgetModel?.widgets!);
                return DynamicWidgetRenderer.render(convertedList[index]);
              },
            );
          }
        return DefaultLoading();
      },),

    );
  }
}
