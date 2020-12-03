class ValidationService {
  static bool isPasswordValid(String password) {
    return password.length < 6 ? false : true;
  }

  static bool passwordsHasMatch(String password, String confirmPassword) {
    if (password != confirmPassword || confirmPassword.length < 6) {
      return false;
    } else {
      return true;
    }
  }
}
