import 'package:equatable/equatable.dart';

class Direction extends Equatable {
  const Direction({required this.stepNumber, required this.text, required this.url});

  final int stepNumber;
  final String text;
  final String url;

  Direction copyWith({int? stepNumber, String? text, String? url}) {
    return Direction(
      stepNumber: stepNumber ?? this.stepNumber,
      text: text ?? this.text,
      url: url ?? this.url,
    );
  }

  @override
  List<Object?> get props => [stepNumber, text, url];
}
