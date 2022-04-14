import 'package:beyondhack/features/wardrobe/viewmodel/my_wardrobe_viewmodel.dart';
import 'package:beyondhack/features/wardrobe/widgets/my_wardrobe_images.dart';
import 'package:beyondhack/ui/components/app_styled_icon.dart';
import 'package:beyondhack/ui/components/button/app_elevated_button.dart';
import 'package:beyondhack/ui/styles/app_colors.dart';
import 'package:beyondhack/ui/styles/app_styles.dart';
import 'package:beyondhack/ui/utils/get_view_model.dart';
import 'package:beyondhack/ui/utils/image_picker_utils.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MyWardrobePage extends StatefulWidget {
  const MyWardrobePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyWardrobePage> createState() => _MyWardrobePageState();
}

class _MyWardrobePageState extends State<MyWardrobePage> with GetViewModel<MyWardrobeViewmodel> {
  String searchKeyword = '';

  @override
  Widget build(BuildContext context) {
    Get.put(MyWardrobeViewmodel());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color(0xffE1F3EF),
            const Color(0xffFBE8DB),
            const Color(0xffD8E8ED).withOpacity(0.4),
          ],
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: GetBuilder<MyWardrobeViewmodel>(builder: (viewModel) {
          if (viewModel.selectedWardrobeItems.isEmpty) {
            return SizedBox();
          }
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppElevatedButton(
                text: 'Change avalibility',
              ),
              AppElevatedButton(
                text: 'Delete',
              ),
            ],
          );
        }),
        floatingActionButton: const AppStyledIcon(
          icon: Icons.add_circle_outline_rounded,
        ).bounce(
          onTap: () {
            viewModel.pickImage();
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          title: const Text('My Wardrobe'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.deeperPurple,
                    ),
                  ),
                  onChanged: (val) => searchKeyword = val,
                )
                    .decorated(
                      borderRadius: BorderRadius.circular(132),
                      color: Colors.white,
                      boxShadow: AppStyles.appBoxShadows,
                    )
                    .expanded(),
                const FaIcon(
                  FontAwesomeIcons.filter,
                  color: AppColors.deeperPurple,
                ).padding(left: 16),
              ],
            ).padding(horizontal: 24),
            const Expanded(
              child: MyWardrobeImages(),
            ),
          ],
        ),
      ),
    );
  }
}
