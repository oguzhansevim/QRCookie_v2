class ApplicationStrings {
  static ApplicationStrings? _instace;
  static ApplicationStrings get instance {
    if (_instace != null) return _instace!;
    _instace = ApplicationStrings._init();
    return _instace!;
  }

  ApplicationStrings._init();

  static const String embeddedImageUrl = 'assets/images/jrcookie.png';

  /// Qr Code Generator
  final String createQr = 'Qr Kod Oluştur';
  final String backToQrGenerator = 'Qr Kod Oluşturucuya Dön';

  /// Qr Code Scanner
  final String scanQr = 'Qr Kod Okuyucu';
  final String qrResult = 'Qr Sonucu';
  final String barcodeType = 'Barkod Tipi';
  final String openWithBrowser = 'Tarayıcı ile aç';
  final String share = 'Paylaş';
  final String copy = 'Kopyala';
  final String backToQrScanner = 'Qr Kod Okuyucuya Dön';
  final String cancel = 'İptal';

  /// History
  final String history = 'Geçmiş';
  final String noData = 'Sistemde veriniz bulunmamaktadır.';
  final String scanned = 'Okutulan QR Kod';
  final String generated = 'Oluşturulan QR Kod';

  /// Database
  static const String database = 'QrCookie.db';
  static const String databaseTable = 'Barcodes';
  static const String databaseCreateQuery = 'CREATE TABLE $databaseTable(id INTEGER PRIMARY KEY, data INTEGER, type INTEGER)';
}
