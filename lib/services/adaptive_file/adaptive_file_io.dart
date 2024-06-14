import 'dart:io';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

extension PrettyQrImageExtension on QrImage {
  Future<String?> exportAsImage(
    final BuildContext context, {
    required final int size,
    ImageByteFormat format = ImageByteFormat.png,
    required final PrettyQrDecoration decoration,
  }) async {
    final bytes = await toImageAsBytes(
        size: size, format: format, decoration: decoration);

    String? outputFile = await FilePicker.platform.saveFile(
      dialogTitle: 'Please select an output file:',
      fileName: 'download.png',
    );
    if (outputFile == null) return null;

    final file = await File(outputFile).create();
    await file.writeAsBytes(bytes!.buffer.asUint8List());
    return file.path;
  }
}
