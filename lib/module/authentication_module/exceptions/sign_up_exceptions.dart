class SignUpFailureModule {
  signupfailure(String code) {
    String errormsg = 'Unknown';
    switch (code) {
      case 'email-already-in-use':
        errormsg = 'An account already exists for that emal.';
        break;
      case 'invalid-email':
        errormsg = 'Email is not valid or badly formatted.';
        break;
      case 'operation-not-allowed':
        errormsg = 'Operation is not allowed. Please Contact Suport.';
        break;
      case 'weak-password':
        errormsg = 'Please enter a stronger password';
        break;
      case 'user-disabled':
        errormsg =
            'This user has been disabled. Please contact support for help';
        break;
      case 'user-not-found':
        errormsg = 'This user can\'t find. Please contact support for help';
        break;
      case 'wrong-password':
        errormsg =
            'the provided password is wrong. Please contact support for help';
        break;
      default:
        errormsg = 'An Unknown Error Occurred With Sign in process';
    }
    return errormsg;
  }
}
