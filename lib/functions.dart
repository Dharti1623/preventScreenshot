import 'dart:io';
import 'package:flutter/material.dart';
import 'package:screen_protector/screen_protector.dart';

protectData() {
  if (Platform.isIOS) {
    protectDataLeakageWithColor();
    protectDataLeakageOn();
    preventScreenshotOn();
  } else if (Platform.isAndroid) {
    protectDataLeakageOn();
  }
}

protectDataLeakageWithColor() async {
  await ScreenProtector.protectDataLeakageWithColor(Colors.white);
}

protectDataLeakageOn() async {
  await ScreenProtector.protectDataLeakageOn();
}

preventScreenshotOn() async {
  await ScreenProtector.preventScreenshotOn();
}

disposeData() async {
  await ScreenProtector.protectDataLeakageOff();
}

// saveImage(Uint8List image) async {
//   String dateToday =
//       '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}_';
//   String timeToday =
//       '${DateTime.now().hour.toString()}_${DateTime.now().minute.toString()}_${DateTime.now().millisecond.toString()}_${DateTime.now().microsecond.toString()}';
//   String baseFileName = 'D-$dateToday$timeToday';
//   print('FILE ---> $baseFileName');
//   final result = await ImageGallerySaver.saveImage(image, name: baseFileName);
//   // File('my_image.jpg').writeAsBytes(image);
//   // final result = await ImageGallerySaver.saveImage(image.buffer.asUint8List());
//   print("File Saved to Gallery--->$result");
// }
// captureScreenShot(
//     /*BuildContext context, */ScreenshotController screenshotController) {
//   screenshotController
//       .capture(delay: const Duration(milliseconds: 10))
//       .then((capturedImage) async {
//     // showCapturedWidget(context, capturedImage!);
//     saveImage(capturedImage!);
//   }).catchError((onError) {
//     print(onError);
//   });
// }

// Future<dynamic> showCapturedWidget(
//     BuildContext context, Uint8List capturedImage) {
//   return showDialog(
//     useSafeArea: false,
//     context: context,
//     builder: (context) => Scaffold(
//       appBar: AppBar(
//         title: const Text("Captured widget screenshot"),
//       ),
//       body: Center(
//           child: capturedImage != null
//               ? Image.memory(capturedImage)
//               : Container()),
//     ),
//   );
// }
