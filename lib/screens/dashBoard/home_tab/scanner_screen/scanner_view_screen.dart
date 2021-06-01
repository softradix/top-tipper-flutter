import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerViewScreen extends StatefulWidget {
  @override
  _ScannerViewScreenState createState() => _ScannerViewScreenState();
}

class _ScannerViewScreenState extends State<ScannerViewScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  Barcode result;

  QRViewController controller;

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(flex:5,child: QRView(key: qrKey, onQRViewCreated: _onQRViewCreated)),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: (result != null)?Text(
                          'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
                          : Text('Scan a code'),
                    ),
                  )
                ],
              ),
            ),
            IconButton(icon: Icon(Icons.keyboard_backspace_rounded), onPressed: (){
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
