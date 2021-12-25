import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;
  final bool stopScanner;

  CameraController? cameraController;

  BarcodeScannerStatus({
    this.isCameraAvailable = false,
    this.cameraController,
    this.error = "",
    this.stopScanner = false,
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available(CameraController cameraController) =>
      BarcodeScannerStatus(
        isCameraAvailable: true,
        cameraController: cameraController,
      );

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String code) {
    return BarcodeScannerStatus(barcode: code);
  }

  bool get showCamera => isCameraAvailable && error.isEmpty;

  bool get hasErro => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
