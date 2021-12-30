class BarcodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeScannerStatus({
    this.isCameraAvailable = false,
    this.error = "",
    this.stopScanner = false,
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available() => BarcodeScannerStatus(
        isCameraAvailable: true,
        stopScanner: false,
      );

  factory BarcodeScannerStatus.error(String message) => BarcodeScannerStatus(
        error: message,
        stopScanner: true,
      );

  factory BarcodeScannerStatus.barcode(String code) {
    return BarcodeScannerStatus(
      barcode: code,
      stopScanner: true,
    );
  }

  bool get showCamera => isCameraAvailable && error.isEmpty;

  bool get hasErro => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
