import 'dart:math';

// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Utils {
  Size getScreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;
  }

  showSnackBar({required BuildContext context, required String content}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.orange,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        content: SizedBox(
          width: getScreenSize().width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<List<File>> pickImages() async {
  //   List<File> images = [];
  //
  //   try {
  //     var files = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowMultiple: true,
  //       allowedExtensions: ['jpg', 'jpeg', 'png', 'svg'],
  //     );
  //     if (files != null && files.files.isNotEmpty) {
  //       for (int i = 0; i < files.files.length; i++) {
  //         images.add(File(files.files[i].path!));
  //       }
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  //   return images;
  // }

  String getUid() {
    return (100000 + Random().nextInt(10000)).toString();
  }
}
