import 'package:intl/intl.dart';

class KFormatter {
  // Method to format a date
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  // Method to format currency
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(amount);
  }

  // Method to format a phone number
  static String formatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (phoneNumber.length == 10) {
      // Format phone number as (XXX) XXX-XXXX
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      // Format phone number as (XXXX) XXX-XXXX
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }
    // Return the original phone number if it's not 10 or 11 digits
    return phoneNumber;
  }

  // Method to format a phone number in international format
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Assuming the first 1 or 2 digits are the country code
    String countryCode = '';
    if (digitsOnly.length > 1) {
      countryCode = '+${digitsOnly.substring(0, digitsOnly.length - 10)}';
      digitsOnly = digitsOnly.substring(digitsOnly.length - 10);
    }

    // Format remaining digits
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');
    if (digitsOnly.length >= 3) {
      formattedNumber.write('(${digitsOnly.substring(0, 3)}) ');
      digitsOnly = digitsOnly.substring(3);
    }
    if (digitsOnly.length >= 3) {
      formattedNumber.write('${digitsOnly.substring(0, 3)}-');
      digitsOnly = digitsOnly.substring(3);
    }
    formattedNumber.write(digitsOnly);

    return formattedNumber.toString();
  }
}
