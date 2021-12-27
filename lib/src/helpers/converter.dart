/// Simplifies getting and parsing the enum values.
class Converter {
  static T enumFromJson<T>(List<T> values, String? json) => values.firstWhere(
      (it) => enumToJson(it)?.toLowerCase() == json?.toLowerCase(),
      orElse: () => values.first);

  static String? enumToJson<T>(T? value) =>
      value != null ? value.toString().split('.')[1] : null;
}
