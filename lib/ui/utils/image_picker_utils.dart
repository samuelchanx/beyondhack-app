import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:beyondhack/ui/utils/ui_helper.dart';
import 'package:beyondhack/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {
  static Future<List<String>?> pickImage() async {
    final results = await showModalActionSheet(
      context: Get.context!,
      actions: [
        SheetAction(
          label: 'Camera',
          icon: Icons.camera_alt,
          key: true,
        ),
        SheetAction(label: 'Gallery', icon: Icons.photo, key: false),
      ],
    );
    if (results == null) {
      logger.i('User aborted picking image');
      return null;
    }

    final picker = ImagePicker();
    List<String> filePaths = [];
    if (results) {
      (await picker.pickImage(source: ImageSource.camera))?.let((e) {
        filePaths.add(e.path);
      });
    } else {
      (await picker.pickMultiImage())?.let((item) {
        filePaths.addAll(item.map((e) => e.path));
      });
    }
    return filePaths;
  }
}
