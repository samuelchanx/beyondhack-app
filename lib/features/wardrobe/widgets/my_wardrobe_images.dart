import 'package:beyondhack/data/model/wardrobe/wardrobe_item.f.dart';
import 'package:beyondhack/features/wardrobe/viewmodel/my_wardrobe_viewmodel.dart';
import 'package:beyondhack/ui/assets/assets.gen.dart';
import 'package:beyondhack/ui/styles/app_styles.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWardrobeImages extends StatelessWidget with GetViewModel<MyWardrobeViewmodel> {
  const MyWardrobeImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyWardrobeViewmodel>(builder: (viewModel) {
      final selectedItems = viewModel.selectedWardrobeItems;
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          if (selectedItems.any((element) => element.id == index)) {
            return Assets.images.logo
                .image()
                .padding(all: 4)
                .decorated(
                  gradient: AppStyles.linearGradient,
                )
                .bounce(
              onTap: () {
                viewModel
                  ..selectedWardrobeItems.removeWhere(
                    (element) => element.id == index,
                  )
                  ..update();
              },
            );
          }
          return Assets.images.logo.image().bounce(
            onTap: () {
              viewModel
                ..selectedWardrobeItems.add(
                  WardrobeItem(index, 'imageId'),
                )
                ..update();
            },
          );
        },
      ).paddingSymmetric(
        horizontal: 24,
        vertical: 16,
      );
    });
  }
}
