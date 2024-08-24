import 'package:logger/logger.dart';

class KLoggerHelper {
  // Khởi tạo Logger với PrettyPrinter
  static final Logger _logger = Logger(
    printer: PrettyPrinter(), // Sửa lỗi cú pháp bằng cách thêm dấu ngoặc tròn
    level: Level.debug, // Level xác định mức độ ghi log
  );

  // Phương thức ghi log debug
  static void debug(String message) {
    _logger.d(message);
  }

  // Phương thức ghi log thông tin
  static void info(String message) {
    _logger.i(message);
  }

  // Phương thức ghi log cảnh báo
  static void warning(String message) {
    _logger.w(message);
  }

  // Phương thức ghi log lỗi
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
