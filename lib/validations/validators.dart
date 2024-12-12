class Validators {
  static String? validateEmail(String value) {
    final emailRegEx = RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]+$');
    if (!emailRegEx.hasMatch(value)) return 'Invalid email format';
    return null;
  }
  static String? validatePassword(String value) {
    if (value.length < 7 || !RegExp(r'^\d+$').hasMatch(value)) {
      return 'Password must be at least 7 digits and contain only numbers';
    }
    return null;
  }

  static String? validateName(String value) {
    if (RegExp(r'[0-9!@#\$%\^&\*\(\)_\+=\{\}\[\]:;\<>,\.\?\/]').hasMatch(value)){
      return 'Name cannot contain numbers or symbols';
    }
    return null;
  }

  static String? validatePhone(String value) {
    if (!RegExp(r'^7\d{8}$').hasMatch(value)) {
      return 'Phone must start with 7 and be exactly 9 digits';
    }
    return null;
  }

}