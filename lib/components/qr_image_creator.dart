import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrImageCreator extends StatelessWidget {
  final String data;
  final String embeddedImageUrl;

  const QrImageCreator({required this.data, required this.embeddedImageUrl});

  @override
  Widget build(BuildContext context) {
    return QrImage(
      data: data,
      version: QrVersions.auto,
      size: 320,
      gapless: true,
      embeddedImage: AssetImage(embeddedImageUrl),
      embeddedImageStyle: QrEmbeddedImageStyle(
        size: Size(80, 80),
      ),
    );
  }
}
