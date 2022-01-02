/// Simplifies getting and parsing the enum values.
class Converter {
  /// Get enum easily from a string
  static T enumFromJson<T>(List<T> values, String? json) =>
      values.firstWhere((it) => enumToJson(it)?.toLowerCase() == json?.toLowerCase(), orElse: () => values.first);

  /// Transform enum to json
  static String? enumToJson<T>(T? value) => value != null ? value.toString().split('.')[1] : null;
}
