abstract class Converter<U> {
  Map<String, dynamic> toMap(U value);
  U? fromMap(Map<String, dynamic> map);

  T? enumFromJson<T>(List<T?> values, String? json) => json != null
      ? values.firstWhere((it) => enumToJson(it)?.toLowerCase() == json.toLowerCase(), orElse: () => null)
      : null;

  String? enumToJson<T>(T? value) => value != null ? value.toString().split('.')[1] : null;
}
