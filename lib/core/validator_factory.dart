//توليد الفاليديشن
import '../utils/regex_patterns.dart';
import 'field_type_detector.dart';
import 'error_messages.dart';

String? validateInput(String label, String value) {
  final type = detectFieldType(label);

  switch (type) {
    case FieldType.email:
      return RegexPatterns.email.hasMatch(value)
          ? null
          : ErrorMessages.getMessage(type);
    case FieldType.phone:
      return RegexPatterns.phone.hasMatch(value)
          ? null
          : ErrorMessages.getMessage(type);
    case FieldType.name:
      return RegexPatterns.name.hasMatch(value)
          ? null
          : ErrorMessages.getMessage(type);
    case FieldType.creditCard:
      return RegexPatterns.creditCard.hasMatch(value)
          ? null
          : ErrorMessages.getMessage(type);
    case FieldType.nationalID:
      return RegexPatterns.nationalID.hasMatch(value)
          ? null
          : ErrorMessages.getMessage(type);
    default:
      return null;
  }
}
