import 'package:flutter/material.dart';
import 'package:qrcookie_v2/components/qr_image_creator.dart';
import 'package:qrcookie_v2/constants/application_constants.dart';

class CreateQrView extends StatefulWidget {
  @override
  _CreateQrViewState createState() => _CreateQrViewState();
}

class _CreateQrViewState extends State<CreateQrView> {
  late TextEditingController qrData;
  bool isShowCreator = true;

  @override
  void initState() {
    super.initState();
    qrData = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ApplicationConstants.CREATE_QR),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isShowCreator ? buildQrCodeEditor() : buildQrCodeImageCreator(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isShowCreator = !isShowCreator;
                });
              },
              child: Text(isShowCreator ? ApplicationConstants.CREATE_QR : ApplicationConstants.BACK_CREATE_QR),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQrCodeImageCreator() => QrImageCreator(data: qrData.text, embeddedImageUrl: ApplicationConstants.EMBEDDED_IMAGE_URL);

  Widget buildQrCodeEditor() => TextField(controller: qrData);
}
