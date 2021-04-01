import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcookie_v2/components/qr_image_creator.dart';
import 'package:qrcookie_v2/constants/application_constants.dart';

class ScanQrView extends StatefulWidget {
  @override
  _ScanQrViewState createState() => _ScanQrViewState();
}

class _ScanQrViewState extends State<ScanQrView> {
  TextEditingController qrData = TextEditingController();
  bool isShowCreator = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR'),
      ),
      body: isShowCreator ? buildQrCodeEditor() : QrImageCreator(data: qrData.text, embeddedImageUrl: ApplicationConstants.EMBEDDED_IMAGE_URL),
    );
  }

  Column buildQrCodeEditor() {
    return Column(
      children: [
        TextField(
          controller: qrData,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isShowCreator = !isShowCreator;
            });
          },
          child: Text('Qr Kod Oluştur'),
        ),
      ],
    );
  }
}
