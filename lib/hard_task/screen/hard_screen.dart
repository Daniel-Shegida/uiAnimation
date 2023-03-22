import 'package:flutter/material.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';

class HardScreen extends StatelessWidget {
  const HardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ProjectStrings.title),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
