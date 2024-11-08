import 'package:equatable/equatable.dart';

class Email extends Equatable {
  final String email;

  const Email({required this.email});

  bool isValid() {
    return true;
  }

  @override
  List<Object?> get props => [email];
}
