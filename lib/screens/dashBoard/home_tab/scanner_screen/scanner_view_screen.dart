import 'package:flutter/material.dart';

class ScannerViewScreen extends StatefulWidget {
  @override
  _ScannerViewScreenState createState() => _ScannerViewScreenState();
}

class _ScannerViewScreenState extends State<ScannerViewScreen> {
  // final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  //
  // Barcode result;
  //
  // QRViewController controller;
  //
  // void _onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   controller.scannedDataStream.listen((scanData) {
  //     setState(() {
  //       result = scanData;
  //     });
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(flex:5,child: Container(color: Colors.grey,)),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text('Scan a code'),
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
