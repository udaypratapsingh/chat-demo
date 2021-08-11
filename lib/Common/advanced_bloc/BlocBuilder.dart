import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Bloc.dart';

class BlocBuilder extends StatelessWidget {
  final Widget Function() builder;
  final Bloc bloc;
  BlocBuilder({this.bloc, this.builder});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.stream,
        initialData: bloc.state,
        builder: (context, snapshot) {
          return builder();
        });
  }
}
