import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'mywidget.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: StaggDemo(),
        );

      }));
}

class StaggDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
         child: StaggeredGrid.count(crossAxisCount:4,
           mainAxisSpacing: 4,
           crossAxisSpacing: 4,
           children:  [
             StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 3,
                  child: MyCustomWidget(icons: Icons.account_box_sharp,bgcolor: Colors.purple,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: MyCustomWidget(icons: Icons.account_box)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 3,
                  child: MyCustomWidget(icons: Icons.account_balance_outlined)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: MyCustomWidget(icons: Icons.account_balance_wallet,bgcolor: Colors.cyan,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 3,
                  child: MyCustomWidget(icons: Icons.add_call)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: MyCustomWidget(icons: Icons.abc_rounded)),
            ],
         ),
        ),
      ),
    );
  }

}