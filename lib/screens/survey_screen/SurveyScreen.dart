import 'package:flutter/material.dart';
import 'package:flutter_app/screens/survey_screen/components/Body.dart';
import 'package:flutter_app/widget/BottomBar.dart';
import 'package:flutter_app/widget/DrawerWidget.dart';



class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Body(),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
