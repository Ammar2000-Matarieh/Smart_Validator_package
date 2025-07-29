//تحليل نوع الحقل

enum FieldType { email, phone, name, creditCard, nationalID, unknown }

FieldType detectFieldType(String label) {
  final lowerLabel = label.toLowerCase();
  if (lowerLabel.contains('email')) return FieldType.email;
  if (lowerLabel.contains('phone') || lowerLabel.contains('mobile'))
    return FieldType.phone;
  if (lowerLabel.contains('name')) return FieldType.name;
  if (lowerLabel.contains('card') || lowerLabel.contains('visa'))
    return FieldType.creditCard;
  if (lowerLabel.contains('id')) return FieldType.nationalID;
  return FieldType.unknown;
}
