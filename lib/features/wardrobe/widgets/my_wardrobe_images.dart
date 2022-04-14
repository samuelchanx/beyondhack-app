import 'package:beyondhack/features/wardrobe/viewmodel/my_wardrobe_viewmodel.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWardrobeImages extends StatelessWidget with GetViewModel<MyWardrobeViewmodel> {
  const MyWardrobeImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return Text(index.toString());
      },
    ).paddingSymmetric(
      horizontal: 24,
      vertical: 16,
    );
  }
}
