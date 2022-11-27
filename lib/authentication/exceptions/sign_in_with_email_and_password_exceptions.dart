class SignInWithEmailAndPasswordFailure {
  final String msg;

  const SignInWithEmailAndPasswordFailure(
      [this.msg = "An Unknown error occurred."]);

  factory SignInWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const SignInWithEmailAndPasswordFailure(
            'An account already exists for that emal.');
      case 'invalid-email':
        return const SignInWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted.');
      case 'operation-not-allowed':
        return const SignInWithEmailAndPasswordFailure(
            'Operation is not allowed. Please Contact Suport.');
      case 'weak-password':
        return const SignInWithEmailAndPasswordFailure(
            'Please enter a stronger password');
      case 'user-disabled':
        return const SignInWithEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help');
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }
}
