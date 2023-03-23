import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hard_ui_impl_first_task/assets/colors/project_colors.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/card_widget.dart';

class HardScreen extends StatelessWidget {
  const HardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.cardColorBackground,
      appBar: AppBar(
        title: const Text(ProjectStrings.title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
          ),
          CardWidget(
            height: 200.h,
            width: 200.w,
            child: Container(),)
        ],
      ),
    );
  }
}
