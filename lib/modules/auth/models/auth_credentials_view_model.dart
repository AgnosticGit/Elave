class AuthCredentialsViewModel {
  AuthCredentialsViewModel({
    this.passwordOpacity = 1.0,
    this.confirmPasswordOpacity = 0.0,
    this.passwordVisibility = true,
    this.confirmPasswordVisibility = false,
    this.emailMarkOpacity = 0.0,
    this.passwordMarkOpacity = 0.0,
    this.confirmPasswordMarkOpacity = 0.0,
  });

  bool passwordVisibility;
  bool confirmPasswordVisibility;
  double passwordOpacity;
  double confirmPasswordOpacity;

  double emailMarkOpacity;
  double passwordMarkOpacity;
  double confirmPasswordMarkOpacity;
}
