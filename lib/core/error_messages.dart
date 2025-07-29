//error_messages.dart
import 'package:smart_form_validator_ai/core/field_type_detector.dart';

class ErrorMessages {
  static String getMessage(FieldType type) {
    switch (type) {
      case FieldType.email:
        return "Invalid email format.";
      case FieldType.phone:
        return "Invalid phone number.";
      case FieldType.name:
        return "Invalid name.";
      case FieldType.creditCard:
        return "Invalid credit card number.";
      case FieldType.nationalID:
        return "Invalid ID number.";
      default:
        return "Invalid input.";
    }
  }
}
