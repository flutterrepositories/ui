import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericPage extends Scaffold {
  Widget body;
  final List<Widget>? appBarActions;
  final FloatingActionButton? floatingActionButton;

  final String appName;

  GenericPage(
      {required this.appName,
      this.appBarActions,
      this.floatingActionButton,
      required this.body})
      : super(
          appBar: AppBar(
            title: Text(appName),
            actions: appBarActions,
          ),
          floatingActionButton: floatingActionButton,
          body: SafeArea(child: body),
        );
}
