import 'package:flutter/material.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/animations/changing_color.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/rotated_card_widget.dart';

class SecindScreen extends StatefulWidget {
  const SecindScreen({required this.currentColor, Key? key}) : super(key: key);
  final double currentColor;

  @override
  State<SecindScreen> createState() => _SecindScreenState();
}

class _SecindScreenState extends State<SecindScreen>
    with TickerProviderStateMixin {
  bool _visible = false;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      value: widget.currentColor,
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'Hero Page',
          child: ChangingShadowColorContainer(
            controller: _controller,
            child: RotatedCardWidget(
              width: 555,
              height: 5555,
              child: Container(
                child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: Center(
                      child: Text(
                    ProjectStrings.waiting,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
                ),
                // color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }
}
