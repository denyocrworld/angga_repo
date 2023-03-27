import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/main_menu_view.dart';

class MainMenuController extends State<MainMenuView> implements MvcController {
  static late MainMenuController instance;
  late MainMenuView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}