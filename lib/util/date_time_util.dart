class DateTimeUtil {
  static DateTime convertToDateTime(int milliseconds) {
    if (milliseconds == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(milliseconds);
  }

  static DateTime zero() {
    return DateTime.fromMillisecondsSinceEpoch(0);
  }
}
