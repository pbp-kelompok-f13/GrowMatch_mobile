/// Centralized API configuration for GrowMatch Mobile.
///
/// Defaults to the production PWS deployment from the mid-semester project.
/// Override during local development with:
/// `flutter run --dart-define=API_BASE_URL=http://10.0.2.2:8000`
class ApiConfig {
  ApiConfig._();

  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://muhammad-nararya51-growmatch.pws.cs.ui.ac.id',
  );

  static String get normalizedBaseUrl =>
      baseUrl.endsWith('/') ? baseUrl.substring(0, baseUrl.length - 1) : baseUrl;

  /// Builds a full URL string from a relative API path.
  static String url(String path) {
    final normalizedPath = path.startsWith('/') ? path : '/$path';
    return '$normalizedBaseUrl$normalizedPath';
  }

  /// Builds a [Uri] with optional query parameters.
  static Uri uri(String path, [Map<String, dynamic>? queryParameters]) {
    final parsed = Uri.parse(url(path));
    if (queryParameters == null || queryParameters.isEmpty) {
      return parsed;
    }
    return parsed.replace(
      queryParameters: queryParameters.map(
        (key, value) => MapEntry(key, value.toString()),
      ),
    );
  }

  // Homepage
  static const String home = '/api/home/';

  // Accounts & Profile (PIC: Muhammad Nararya Ardhana)
  static const String authLogin = '/api/auth/login/';
  static const String authRegister = '/api/auth/register/';
  static const String authLogout = '/api/auth/logout/';
  static const String profile = '/api/auth/profile/';

  // Plant Catalog (PIC: Aisyah Zayyana Hanifah)
  static const String plants = '/api/plants/';
  static String plantDetail(Object id) => '/api/plants/$id/';

  // Plant Recommendation (PIC: Deodatus Kevin Sihaloho)
  static const String recommendations = '/api/recommendations/';
  static String recommendationDetail(String id) => '/api/recommendations/$id/';
  static String recommendationPlants(String id) =>
      '/api/recommendations/$id/plants/';

  // My Garden & Care Log (PIC: Kaysan Salman Ali Kusumah)
  static const String myGarden = '/api/my-garden/';
  static String myGardenDetail(Object id) => '/api/my-garden/$id/';
  static const String careLogs = '/api/care-logs/';
  static String careLogDetail(Object id) => '/api/care-logs/$id/';

  // Plant Reviews (PIC: Leow Vincent Vintizel)
  static const String reviews = '/api/reviews/';
  static String reviewDetail(Object id) => '/api/reviews/$id/';
}
