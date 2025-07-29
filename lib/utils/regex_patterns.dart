//الأنماط لكل نوع
class RegexPatterns {
  static final email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final phone = RegExp(r'^\+?\d{7,15}$');
  static final name = RegExp(
    r"^[a-zA-Z\u0600-\u06FF\s]{2,}$",
  ); // عربي + إنجليزي
  static final creditCard = RegExp(r'^\d{16}$');
  static final nationalID = RegExp(r'^\d{10}$'); // كمثال
}
