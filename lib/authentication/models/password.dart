import 'package:equatable/equatable.dart';

class Password extends Equatable {
  final String password;
  final bool isMatch;

  const Password({
    required this.password,
    bool? isMatch,
  }) : isMatch = isMatch ?? true;

  bool isValid() {
    return _valid() && isMatch;
  }

  bool _valid() {
    // Paste validation logic here, such as min num characters
    return true;
  }

  @override
  List<Object?> get props => [password];
}
