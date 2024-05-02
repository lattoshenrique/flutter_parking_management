abstract class NavigationArguments {
  Map<String, dynamic> get params;

  Uri get uri;

  dynamic get data;

  Map<String, dynamic> get queryParams => uri.queryParameters;

  Map<String, List<String>> get queryParamsAll => uri.queryParametersAll;
}
