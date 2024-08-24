class KValidator {

  static String? validateEmptyText(String? fieldName,String?value){
    if(value==null|| value.isEmpty){
      return' cần nhập $fieldName';
    }
    return null;
  }


  // Phương thức kiểm tra email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nhập Email';
    }
    // Regular expression để kiểm tra định dạng email
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Email không hợp lệ';
    }
    return null;
  }

  // Phương thức kiểm tra mật khẩu
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nhập mật khẩu';
    }
    // Kiểm tra độ dài của mật khẩu
    if (value.length < 6) {
      return 'Mật khẩu phải có ít nhất 6 ký tự';
    }
    // Kiểm tra mật khẩu phải chứa ít nhất 1 chữ cái và 1 số
    final passwordRegExp = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    if (!passwordRegExp.hasMatch(value)) {
      return 'Mật khẩu phải chứa ít nhất 1 chữ cái và 1 số';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nhập số điện thoại';
    }
    // Kiểm tra định dạng số điện thoại quốc tế hoặc trong nước
    final phoneRegExp = RegExp(r'^\+?[0-9]{1,4}?[-.\s]?([0-9]{1,3}?[-.\s]?){1,4}([0-9]{1,4})$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }
}
