part of swagger.api;

class AllowedActions {
  /// The underlying value of this enum member.
  String value;

  AllowedActions._internal(this.value);

  /// The permissions policy that controls the actions that are allowed to run. Can be one of: &#x60;all&#x60;, &#x60;local_only&#x60;, or &#x60;selected&#x60;.
  static AllowedActions all_ = AllowedActions._internal("all");
  /// The permissions policy that controls the actions that are allowed to run. Can be one of: &#x60;all&#x60;, &#x60;local_only&#x60;, or &#x60;selected&#x60;.
  static AllowedActions localOnly_ = AllowedActions._internal("local_only");
  /// The permissions policy that controls the actions that are allowed to run. Can be one of: &#x60;all&#x60;, &#x60;local_only&#x60;, or &#x60;selected&#x60;.
  static AllowedActions selected_ = AllowedActions._internal("selected");

  AllowedActions.fromJson(dynamic data) {
    switch (data) {
          case "all": value = data; break;
          case "local_only": value = data; break;
          case "selected": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AllowedActions data) {
    return data.value;
  }
}